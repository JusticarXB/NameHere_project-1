
//menu options
menu[1] = "New Game";
menu[0] = "Quit";

//menu options locations
menuX = room_width -100;
menuItems = array_length(menu);


//player functionality
currentOption = 1;

//getting rid of the player and camera to not interfere with going back to the menu, then doing a new game
if(instance_exists(obj_ROB)) instance_destroy(obj_ROB);
if(instance_exists(obj_camera)) instance_destroy(obj_camera);
