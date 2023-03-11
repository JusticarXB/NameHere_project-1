//Cheat Codes
if(keyboard_check(ord("R")) && global.gameOver){
	audio_stop_all();
	audio_play_sound(snd_menuBeep,1,false);
	if(room != rm_solarRoom){
		
		instance_destroy(obj_camera);
		scr_slideTransition(Trans_Mode.GOTO, rm_solarRoom);
		
	}else{
		
		instance_create_layer(88,90,"Instances",obj_ROB);
		
	}	
	
	audio_stop_all();
}

//Give all key items
if(keyboard_check(ord("T"))){
	audio_play_sound(snd_menuBeep,1,false);
	global.batteries = true;
	global.hIW = true;
	global.converters = true;
	global.panels = true;

}

//ends the game
if(keyboard_check(vk_escape)) game_end();

//gives a battery
if(keyboard_check(ord("B"))){

	global.item = spr_battery;
	global.itemName = "Battery";
	global.object = obj_battery;

}

//gives a wire
if(keyboard_check(ord("N")))
{
	global.item = spr_wire;
	global.itemName = "Wires";
	global.object = obj_battery;
	
}