/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance of a cave. {not torch_pickup:There is a torch on the wall.} The cave extends to the east and west.
+ [Go East] -> east_tunnel
+ [Go West] -> west_tunnel
* [Torch pickup] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. You cannot see anything.
* {torch_pickup}  [Light your torch] -> east_cave_lit
+ [Return to entrance] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel
+ [Return to entrance] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch.
+ [Return to entrance] -> cave_mouth
-> END

=== east_cave_lit ===
You can now see. There is thousand of coins around you.
-> END
