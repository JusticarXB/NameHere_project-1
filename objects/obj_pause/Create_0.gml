global.pause = false;
pauseSurf = -1;
pauseSurfBuffer = -1;

//Game Resolution
resW = room_width;
resH = room_height;

//menu options
menu[1] = "resume";
menu[0] = "Quit to menu";
menuItems = array_length(menu);


//objectives list
objective[5] = "Turn on the Solar Tower";
objective[4] = "Get the elevator working";
objective[3] = "Find batteries for broken solar panels #1";
objective[2] = "Find the converter for damaged solar panels #2";
objective[1] = "Find extra panels for missing solar panels #3";
objective[0] = "Find Highly insulated Wiring for EMI protection #4";
objectiveItems = array_length(objective);

//player functionality
menuSelection = 1;