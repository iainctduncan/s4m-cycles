Implementation Notes
====================

Tracker
-------
The tracker component receives audio input, and outputs note events to the sequencer layer.
Presently, note events consist only of a MIDI note number representing pitch,
and a decimal from 0 to 1.0 representing amplitude at onset; note durations are not yet tracked. 
This decision was made for two reasons: to simplify the tracker layer during
initial development, and to allow notes to be sent to the sequencer immediately 
on onset detection. Note duration in the sequencer is thus static, and the synthesizer
patches were chosen around this, mimicking plucked strings.

Audio Input & Analysis
^^^^^^^^^^^^^^^^^^^^^^
Audio is sent from Max to a csound6~ object, where it is analyzed and transformed
into discrete pitch and amplitude messages, sent once per control pass. 
Csound uses a *control-rate*, in which *kspms* samples are handled per computation
buffer and control signals (k-rate variables) are updated once per *kspms* samples.
In the csound6~ object, which I ported from Victor Lazzarini's csoundapi~ object for
Pure Data, this rate must be an even divisor of the Max signal vector size. 

The ksmp rate in Csound also affects audio analysis: a larger ksmp value provides
a larger bin for analysis at the cost of increased latency. Empirically,
I found a ksmp of 16 running with a Max signal vector size of 32 to strike a
good balance of pitch and amplitude estimation accuracy versus latency.

The Csound instruments send messages consisting of the output frequency in 
cycles-per-second and output amplitude in RMS amplitude converted to decibels.
These are sent once per ksmp, interpolated into Scheme s-expressions using
Max message interpolations, and sent to the Scheme instance handling note tracking. 

.. image:: img/tracker-component.png
   :scale: 50%

The Csound code consists of two always-on instruments, one for frequency and the other
for amplitude. After experimenting with the various Csound pitch tracking opcodes,
I found the best method for soprano saxophone was the **pitchamdf** opcode,
which uses the Average Magnitude Difference Function, and is documented in the manual
as being appropriate for real-time tracking of monophonic signals. 

Conversion to Note Events
^^^^^^^^^^^^^^^^^^^^^^^^^^
The signals detailed above are sent as Scheme function calls into the Scheme program for
converting to note events. This is a work in progress and currently does not handle 
legato notes, an area I intend to improve.

The note parsing algorithm in the Scheme program is roughly as follows:

* Incoming db and cps values are each handled in their own listener functions, with
  each function receiving a value once per ksmp (i.e., at control rate)
* Previous values for each are saved in global variables for comparison to the current value
* User-configured values are set for db-delta, db-threshold, and debounce time in ksmps
* A new onset is considered to have occurred if:
    * The current db value exceeds the db-threshold
    * The current db value is greater than the previous by db-delta or more
    * No previous onset has occurred in the previous debounce number of ksmps
* On a new onset, the following occurs:
    * The next **onset-wait** ksmps are ignored so that pitch values during noisy attacks are ignored
    * The next **frq-buf-size** cps values are stored in a circular buffer (in use, 5 to 7)
    * Simultaneously, the next **db-buf-size** values are stored in a circular buffer 
* After an onset is detected and the two buffers have been filled:
    * The frequency buffer contents are sorted numerically, and the median value is used as the value that is converted to the nearest MIDI note number and used as the detected pitch
    * The db buffers mean db value is calculated and converted to a normalized amplitude value, using the configurable values for **dbs-ceiling** and **dbs-floor** as scaling values
* The calculated onset values for MIDI note number and amplitude are then sent out to the tracker S4M instance, displayed in the Max patch, and sent to the sequencing S4M instance


Sequencer
---------

The sequencer layer consists of four looping sequencers that clock off an incoming Max message sent
from a metro object every X ticks, where X is user configurable, and ticks is Max ticks at 480 PPQ. 
Values from 1 to 4 provide a high degree of accuracy and appear to perform adequately.

The sequence objects store notes in a hash-table (the Lisp equivalent of a Python dictionary),
keyed by tick time within a master loop length set in beats.
Values stored are themselves hash-tables, allowing the sequencer to store arbitrary numbers of fields per note,
which can act as inputs to the transformation algorithms or sources for modulation data to the output sounds.
This is used to store metadata such as initiating take-number, note repetition number, and note probability,
in addition to the values for pitch, amplitude, and duration. Duration is
a static, user-configurable value set in each sequencer, and thus is not related to the length of
the note on the saxophone. 

Each synthesizer track has its own sequencer object, where each sequencer
may be set to a separate loop length in beats. The global tempo of the sequencers 
may be changed by changing the tempo of the Max clock source in the containing Max patch. 
In the recorded performance, there are four monophonic sequencer tracks playing, all set to 
use a four bar loop length.

Because notes are stored at absolute tick values (rather than every quantized sixteenth note as with a 
step sequencer), notes may be stored very close together, potentially causing smearing and clusters. To prevent this, the
sequencer has a user-configurable "blast radius" of a certain number of ticks. 
When a note is added to a sequencer, any notes within this radius on either side are erased.
This achieves the goal of having the sequencer be easy to manage (as with a monophonic step sequencer)
while preserving micro-timing from the player and allowing overdubbing (both by the player and the algorithms).

The sequencer has two additional unusual features that help achieve my goal
of having the output not obviously sound like a looper:

The first is that each note event has a **reps**
attribute: after the note has played this many times, it is automatically erased from its sequence.
This ensures that material captured is only heard for a certain amount of time, and spares the performer
having to explicitly erase a track to make room. This value can be set on the fly, allowing the
performer to add material that will continue for a long time or only appear briefly. 
When a null value is used for note reps, the notes will play until explicitly erased.

Secondly, the sequencer has a **note probability** value set for each sequencer track, which can be
set dynamically and, in my performance, was controlled by MIDI faders manipulated with my feet.
This is applied to every note on a sequence, enabling me to thin out the texture dynamically
and to draw sections to a close by closing the faders for the sequencers (i.e., probability of zero
acting as a track mute).

Finally, the sequencer can record in either overdub or replace mode. For this performance,
I left them all in overdub, relying on the note lifecycles and note probability to provide me with
enough variety.


Transformer
-----------

When the performer holds down the sustain pedal, note inputs from the tracker are captured in a
take buffer in the Scheme program.  
When the performer releases the pedal, the take is considered done and ready for transformation.

Transformations are handled by a library of Scheme functions, with transformations implemented thus 
far for:

* Transposition
* Temporal inversion (retrograde)
* Inversion at a pitch (reflection)
* Time compression/expansion
* Spaced repetitions
* Randomization of the probability of notes playing

The main controller module maintains a list of active transformers and arguments to them,
which can be updated from a Scheme function at any time. These can be called based on any kind of user input.

One of the goals of this version was to ensure that I could focus on improvising with the saxophone, 
with a minimum of hands-on operations necessary to ensure adequate variety and change. 
To achieve this, I created banks of presets, where each preset
consisted of a function that set: the active transformer list, the number of repetitions for transformations
being added to sequencers, the space between repetitions, and the note rep value.
This enabled me to achieve highly varied results in different sections by calling a new preset function
and by varying my use of the take pedal.

In initial development, I configured buttons to choose presets. However, making decisions about the presets and
taking my hands off the saxophone proved to be too much of an interruption to the improvisation process. 
The solution I used in this performance was to have the preset change automatically once per take, cycling through various presets,
with each change triggered by the pedal release that marks the end of a take. 

Variety in transformation chains was achieved two ways:
  * On each take, the active preset was rotated round-robin through a bank of four presets.
  * An overall take counter was used to make the algorithms in the presets change depending on the take number.

This allowed me to start the performance with a thinner texture by having the note reps, probability, 
and take reps increase over the first 8 takes, all without requiring any additional input from me. 

Controller
----------
In addition to the various sequencer objects, the Scheme program consists of a substantial controller
layer, with MIDI input, parsing, and routing handled by code that builds on tools I created for
previous projects. During prototyping, this included button controllers for choosing tracks, bars, and
transformer chains, and buttons for running transformations and copying them into specific places
in tracks, along with general operations for erasing tracks and choosing the record mode.
All of these worked well and provided typical sequencer operations that were productive for interactive composition, however,
they proved too complicated for use in real time without negative effects on my saxophone improvisations. 

For the purpose of the concert, I thus reduced controller input to two input streams:
the take pedal capturing audio and selecting the active algorithm preset, and the
fader box for picking the note probability for each sequencer.
The fader box (a BCF-2000) has large, loose faders, allowing me to manipulate these with my feet
without taking my hands off the saxophone. The 
fader throw range was divided into 8, and the probability set as being between 0 out of 7 to 7 out of 7.
Thus, with a fader all the way up, the probability setting has no effect, and with it fully down, the 
given line is muted. This approach gave me an effective way to thin out texture, and while moving
faders with my foot while playing requires some practice, it was definitely possible, 
and presumably also interesting for the audience.

Output
-------
The sequencers ultimately control sound by sending control volt and gate outputs to the modular
synthesizer, using the Expert Sleepers digital audio to CV conversion modules and their accompanying
Max objects. These are low-level Max objects, thus it was necessary to make a Scheme layer to drive 
them from note abstractions.

As mentioned earlier, the duration of notes from the saxophone is not (currently) captured.
Note durations are, at this point, simply set in each sequencer, with synthesizer sounds chosen
that work with momentary notes, similar to plucked strings or percussive sounds.
The Scheme code uses delayed calls to turn gates off after a note duration has expired.

Amplitude values are mapped variously to additional filter cutoff sounds and amplitude envelope
amounts on the synthesizers.

