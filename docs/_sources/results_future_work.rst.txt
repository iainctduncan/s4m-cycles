Results, Future Work, & Conclusion
==================================

Goals Achieved
--------------

Overall, I felt the system and performance were successful. 
It achieved goals I set out in various ways, detailed below.

Saxophone As Input Source
^^^^^^^^^^^^^^^^^^^^^^^^^
The first artistic goal was to create pieces with all material coming from the saxophone 
(i.e., nothing preprogrammed), and in which the performer
is clearly engaged with the instrument, rather than looking at a screen or dials.

While work remains to be done on the tracking layer, this largely succeeded. 
I felt I was engaged with the performance very differently than in my previous
pieces that used MIDI inputs, live-coding, and scoring, and the musical results
of doing so were very different as well.
I was also much more aware of myself and my body as a performer who the audience
watches, compared to the situation when manipulating dials and the like.

To me, this was a very satisfying and artistically engaging way to create music,
and is a direction I will
certainly continue to explore in future works. I believe it was also a more
engaging performance for the audience than is possible when they watch someone
simply manipulating electronic devices.


Variety and Entropy
^^^^^^^^^^^^^^^^^^^^
Another goal was to ensure the piece did not sound like a standard looper performance. 
When I hear looper performances, I mostly find the material overly repetitive,
in that each layer repeats the exact same material for a long time until the performer replaces it. 
Additionally, the structure becomes very clearly strophic by definition.

I intended to avoid these issues by having the lines captured from the saxophone altered significantly
before sequencing, including temporal changes (i.e., stretching); allowing them
to layer short notes on top of each other, thus creating composite lines; and having them die out
after some time without intervention by me (though I can intervene to speed it up).
I feel this succeeded. On listening to the recording, I feel the listener can clearly
hear that the synthesizer material is derived from the melodic and harmonic choices I make
on the saxophone, but does not sound like a looper. 
In fact, in conversation with others after the performance, I heard that even educated listeners could
not tell for sure that looping was happening.

Temporal Elasticity
^^^^^^^^^^^^^^^^^^^^^
Additionally, I experimented with the choice of having a steady pulse audible or not,
providing me an audible road map for the loop cycles and beat spacing of the sequencers.
For this performance, I ultimately chose to not hear the underlying main clock.
The timing in sequenced lines is determined both my timing as a player and by the
main clock tempo and loop point (4 bars at 70 bpm in this performance).
In performance, the sequenced lines have clear temporal connections to what I have played, but as 
my playing is not (after the beginning) synchronized perfectly (or necessarily at all!) 
with the main clock, there is plenty of drift and rhythmic surprise. 
This succeeded in achieving a free improvised effect and a feeling of temporal elasticity.

Improvisational Surprise
^^^^^^^^^^^^^^^^^^^^^^^^
Another goal was for the system to prompt me to improvise in response to transformations,
pushing me to play material differently than I would in a solo performance or in an improvisation
over a set background.
This was also successful, with the transformations and temporal elasticity providing
an effect not dissimilar to playing with other performers in a free improvisation context.

Compositional Structure
^^^^^^^^^^^^^^^^^^^^^^^
Returning to the problems of standard loopers, a deficiency (to me) in these tools
is that they lead the improviser to a structure of simply adding layers gradually 
within a strophic form and then removing them similarly (what Steve Reich called the "tent structure"). 
By having note lifecycles and note probabilities, and having those under the control
of the fader movements, I was able to introduce a more varied textural arc in the piece.
I do not think I explored this as well as is possible, but it was successful at least
in avoiding an obviously layered structure and in providing more rapid changes
of texture.


Limitations & Future Work
--------------------------

I have numerous ideas and plans for improving the system and process of creating music with it.

Tracking Improvements
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The principal deficiency in the tracker is that it does not consider a change of pitch 
within a legato line to be a new note. Fixing this will require significant new code,
as there must be a dual heuristic for new note detection.
At present, this forces me to play detached lines for what I want captured. 
This can be interesting, as I can have a capture pick up something that sounds
quite different from what I have played, for example, triggering a three-note 
capture with a line of many more notes by choosing where to tongue. 
However, it does force me into playing more loudly and aggressively than I would
like for the whole piece. 
Improving the tracker in this area will be a high priority.

Dynamic Range
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
I am able to achieve dynamic variety through the volume of sound and the 
density of note probability, however, I found that in performance I wanted to 
be able to bring the overall intensity down more quickly than is currently possible. 
At present, if I have added many takes rapidly and played aggressively,
this material rings out for some time as the notes make their way through 
their lifecycles. While the number of notes that win the dice roll of playing or not
can be changed with the foot controlller, they still go on for a long time.

I would like to be able to bring down volume, spectral content, and density
more rapidly from gestural control, and to do so in a way that is reversible
(i.e., not just killing off notes).

Gestural Controls
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
To achieve the above, a high priority for me will be developing additional
input streams that can be manipulated while playing saxophone, without 
breaking the performer's connection with the audience.
Foot control of faders proved to be surprisingly effective, though it will
take more practice to do without interfering with improvisation. 
I believe this was also engaging to watch for the audience as I do not
need to turn away from the audience. 

I believe a rich area of improvement will be mapping the physical orientation
of the saxophone to input controls. 
The soprano saxophone is, compared to other saxophones, much easier to manipulate
as a stick oriented in three dimensions, and can thus be used to conduct.
Were I to change the microphone to a clip-on mic, and implement some physical 
tracking, I could influence the algorithms and mix automation effectively
with multiple streams based on the position of the mouthpiece and bell
and their orientation to each other.

Audio Controls 
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Another area that I have not explored in this version is having the note material
captured by the system change algorithmic parameter or system behaviour based
on the notes themselves. For example, pitch classes used within the last X captured notes could be
used to determine key centers, and these used as input arguments to algorithms
such as reflection and transposition. Similarly, measurements of the density of captured
notes could be used to change texture.


Pulse & Temporal Interplay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
While the temporally free approach in this performance worked, I would also
like to explore works in which the relationship of what I play to an underlying 
pulse is more apparent.  
This could be achieved by having some indication to me of the underlying pulse,
whether through a click track that is inaudible to the audience or through a visual
indicator on stage (e.g., flashing light, small screen).

Another area of exploration will be to allow the pulse to change over the piece
- at present the main clock is disguised, but is, in fact, static. 
A potentially fruitful area to explore will be allowing rubato pulses, with
pulse changes coming from onset detection or  gestural controls.

Additionally, the different track sequencers currently all use the same clock. 
Interesting effects could be explored by allowing their clocks to diverge.

Algorithmic Reworking of Audio
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
In the present version, the captured lines are transformed and rendered on
synthesizer patches that deliberately sound nothing like a saxophone. 
While I don't want the system to sound like a conventional looper, 
using the actual saxophone audio as the basis for electronically played material could be fruitful.
This could include granulation of saxophone sounds, spectral transformations,
or unusual stretching and delaying.

Additional Performers 
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Finally, I feel the system could be very rewarding to use with multiple players.
This would also enable the performers to alter the algorithms more deliberately,
perhaps variously assigning people to programmatic alterations versus improvising audio material. 
I also think composite captures that blend together input from multiple sources
into single lines could be fruitful and provide surprises.

Additionaly, players could also help one explore different temporal styles. 
The system can send out clock sources to others, and could be effective combined
with traditional sequencing or improvisation within a clear metric grid.


Conclusion
----------
Overall, I feel the system developed for this project has been an artistic and technical
success, providing me with a future direction that is both artistically exciting
and will provide opportunities to highlight the advantages of working in Scheme for Max.

While far from perfect, the tracking layer is responsive enough
for me to be able to add material quickly without worrying about the technical side.
I found I was able to focus on the artistic output in a more concentrated, and dare I say,
artistic, fashion than I have been able to previously. 
As an improvisor, I also felt engaged with, and excited by, the work more than I have
for projects where I provide a composition, but do not perform or improvise.

I believe the continued development of the system and the addition of other performers
will enable me to produce higher quality work with it
and that the results will be interesting to performers as well as audiences.

