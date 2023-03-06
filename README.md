# SolarQuest_project-1
Finished(Kind of)
Implemented combat
Implemented pause and menu screen (needs to rework how that functions in the respawnn room)
Implemented almost all necessary items and abilities (still need to implement wires)
Implemented all core assets

Still need to do:
The actual levels need to be put into the game
sprites need to be put into the game
sounds and music still need to be put in
Enemies still need to be added
Enemy logic/pathfinding still needs to be added
Wires need to be added as a child of interact parent and given functionality, and a display


Known or pending bugs to fix:
E icon/ items tank FPS if the E Icon is on the screen FIXED 
SOLUTION: Interact parent kept recreating E-ICONS endlessly, so corrected the if statement for creating an E-Icon to check if there isn't already on placed down above the item

shooting up left does not work Pending
Solution in progress, it has something to do with the boolean logic necessary to combine key inputs, it recognizes that up and left arrows are being pressed, but does not spawn a bullet, direction values are equal bullet just does not spawn
