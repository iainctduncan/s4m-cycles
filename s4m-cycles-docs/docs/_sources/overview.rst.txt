Overview
============

Introduction
------------
S4M-Cycles is an audio-reactive looping sequencer for controlling
algorithmic processes and modular synthesizers in Max with a saxophone.

Overall, the system enables the performer to capture audio lines from the controlling instrument
by holding down a sustain pedal and playing audio.
Material captured is then translated Scheme data structures representing note objects and their temporal locations
relative to a main looping clock. These are then transformed by programmatic 
algorithms, with transformations including operations such as transposition, repetition,
time compression/expansion, random note muting, and note life-cycles.
The sequencer then plays these transformed sequences, outputting control volt
signals to a modular synthesizer. The performer has the opportunity to control
aspects of the sequencing and transformation algorithms in real-time through MIDI
input, such as through fader boxes or additional pedals. 

It is capable of running in real-time with minimal latency (< 20ms) on a modern laptop (Macbook M4),
with input from the saxophone and modular sythesizers running into a local digital audio workstation
for effect processing and mixing. 

The system was demonstrated in performance at the University of Victoria Computer Music concert, 
April 2026. A recording of the performance is available here: https://soundcloud.com/iain-duncan/improvisation-for-saxophone


Artistic Rationale
-------------------
My purpose in creating S4M-cycles was to provide the improviser with algorithimic and stochastic accompaniment
for new music improvisation, and to do so in such a manner that algorithmic transformations could be
explored in real-time while music continues (i.e., "live coding"). 
The system is intended to enable the performer to influence the accompaniment
sufficiently from audio control only, but to also surprise the improviser with non-obvious transformations
of the source material, thus prompting the improvisor in new and unexpected ways, when compared to
a standard looper.

The design of the system is intended to enable both complete free improvisation and improvisation
according to preset timelines in which behaviour of the system is scored in advance. 
However for my performance in April 2026, I deliberately limited the material to free improvisation only.

The system design is highly extensible, and will accomodate multiple-performers with little extra work.
Additionally, should one desire, the system is capable as is of being reprogrammed on the fly,
allowing one to experiment with different algorithms without need to restart the music. 
This could trivially be extended to situations in which a programmer-performer transforms 
input from another improvising performer, both via MIDI controls and real-time code updates,
leveraging the built-in functionality of S4M for live coding over the network.

Components
------------
S4M-Cycles is implemented as a Max patch containing the following high level components,
each of which is detailed in this documentation.

  * **Tracking**: A saxophone tracking subpatch, consisting of a csound6~ object that
    receives incoming audio and outputing pitch and amplitude messages, and a Scheme program
    that translates these into discrete, symbolic note events 
  * **Sequencing**: A Scheme layer that translates note messages
    from the tracker into symbolic musical sequences, runs algorithmic transformations over these, 
    and plays them back in looping sequences
  * **Transformer**: A Scheme layer handling algorithmic transformations of material used in
    the sequencer engine 
  * **Control**: A real-time control layer that takes MIDI input from the user and 
    controls the behaviour of the sequencer and transformation layer
  * **Output**: A collection of Max objects and Scheme functions that turns 
    symbolic output messages from the sequencer into control volt signals 







