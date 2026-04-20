Overview
============

Introduction
------------
S4M-Cycles is an audio-reactive looping sequencer for controlling
algorithmic processes and modular synthesizers in Max with a soprano saxophone.
It should also work with any monophonic acoustic instrument, though adjustments
to the tracking layer may be required.

The system enables the performer to capture audio lines from the controlling instrument
by holding down a sustain pedal and playing into a microphone.
The material captured is then translated into Scheme data structures representing note objects and their temporal locations
relative to a main looping clock. 
These data structures are then transformed by programmatic 
algorithms, including operations such as transposition, repetition,
time compression/expansion, random note muting, and note life-cycles.
The systems play back these transformed sequences with a collection of high-resolution looping sequencers,
outputting control volt signals to a modular synthesizer. 
The performer has the opportunity to control
aspects of the sequencing and transformation algorithms in real-time through MIDI
input, such as through fader boxes or additional pedals. 

S4M-Cycles is capable of running in real-time with minimal latency (< 20ms) on a modern laptop (MacBook M4 Pro),
with input from the saxophone and modular synthesizers streamed into a local digital audio workstation
for effect processing and mixing. 

The system was demonstrated in performance at the University of Victoria Computer Music concert, 
April 2026. A recording of the performance is available here: https://soundcloud.com/iain-duncan/improvisation-for-saxophone


Artistic Rationale
-------------------
My purpose in creating S4M-Cycles was to provide the improviser with algorithmic and stochastic accompaniment
for new music improvisation, and to do so in such a manner that algorithmic transformations could be
explored in real-time while the music plays (i.e., "live coding"). 
The system is intended to enable the performer to influence the accompaniment
sufficiently from audio control only, and to also surprise the improviser with non-obvious transformations
of the source material, thus prompting the improviser in new and unexpected ways when compared to
a standard looper.

The design of the system is intended to enable both complete free improvisation and improvisation
according to preset timelines in which the behaviour of the system is scored in advance. 
However, for my performance in April 2026, I deliberately limited the material to free improvisation only.

The system design is highly extensible, and will accommodate multiple performers with little extra work.
Additionally, the system is capable of being reprogrammed on the fly,
allowing one to experiment with different algorithms without needing to restart the piece. 
This could trivially be extended to situations in which a programmer-performer transforms 
input from another improvising performer, both via MIDI controls and real-time code updates,
leveraging the built-in functionality of S4M for live coding over the network.

Components
------------
S4M-Cycles is implemented as a Max patch containing the following high-level components,
each of which is detailed further in this documentation:

  * **Tracking**: A saxophone tracking subpatch, consisting of a csound6~ object that
    receives incoming audio and outputs pitch and amplitude messages, and a Scheme program
    that translates these into discrete, symbolic note events 
  * **Sequencing**: A Scheme layer that translates note messages
    from the tracker into symbolic musical sequences, runs algorithmic transformations over these, 
    and plays them back in looping sequences
  * **Transformer**: A Scheme layer handling algorithmic transformations of material used in
    the sequencer engine 
  * **Control**: A real-time control layer that takes MIDI input from the user and 
    controls the behaviour of the sequencer and transformation layer
  * **Output**: A collection of Max objects and Scheme functions that turn 
    symbolic output messages from the sequencer into control volt signals for a modular synthesizer







