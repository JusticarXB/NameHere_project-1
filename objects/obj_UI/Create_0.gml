//game start
global.newGame = true;

//Item set-up
global.itemName = "";
global.item = spr_noItem;
global.object = obj_interactParent;

//logic gates
global.logicGate = false;

//death screen alpha loading
deathScreen_alpha = 0;

//(temporary)alpha variable for the press "alt + r" to restart prompt
prompt_alpha =0;

//gameEnd Screen
endscreen_alpha = 0;

//game over boolean
global.gameOver = false;

//Battery Timer
batteryStart = false;
global.batteryTimer = room_speed*30;


//key Items
global.batteries = false;
global.converters = false;
global.panels = false;
global.hIW = false;


//game ended
global.gameEnd = false;
//elevator
global.elevator = false;
//Timer
global.timer = 0;


//credits array
credits[4] = "Credits: ";
credits[3] = "Artist: Starr Rathbone";
credits[2] = "Designer: Ronald Vang";
credits[1] = "Producer: Alyssa Gugneja";
credits[0] = "Programmer: Xander Bruce";
creditsLength = array_length(credits);