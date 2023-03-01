//game start
global.newGame = true;

//Item set-up
global.itemName = "";
global.item = spr_noItem;

//logic gates
global.logicGate = false;

//death screen alpha loading
deathScreen_alpha = 0;

//(temporary)alpha variable for the press "alt + r" to restart prompt
prompt_alpha =0;

//game over boolean
global.gameOver = false;

//Battery Timer
batteryStart = false;
global.batteryTimer = room_speed*30;