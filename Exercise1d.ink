/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach. 
It is { advance_time ( )}

+ [Stroll back up the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

 * { time == 1} [Pick some seashells] -> shells
 * { time == 2} [You see something far in the distance.] -> strange_fish
 
+ [Move back up the beach] -> seashore

== shells ==
You pick up the shells
-> beach2

== strange_fish ==
You look closely and see a fish tail go in the water.
* [Keep walking.] -> beach2
* [Keep looking.] -> mermaid

== mermaid ==
A beautiful female voice sings from the distance. You see the face of a woman observing you from a rock. 

* [Keep walking] -> beach2
* [Get closer] -> nightmare

== nightmare ==
Once you get close enough you fall asleep with her soothing lullaby. 

You wake up in the sand. -> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
