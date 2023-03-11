
#region starting new game
	if(global.newGame){
	
		//resetting all values
		global.logicGate = false;
		global.itemName = "";
		global.item = spr_noItem;
		global.batteryTimer = -1;
		global.batteries = false
		global.elevator = false;
		global.converters = false;
		global.panels = false;
		global.hIW = false;
		global.timer = 0;
		global.gameEnd = false;
	
		//turning new game off
		global.newGame = false;

	}
#endregion

#region	Battery countdown
	//tests to see if current item is battery and the timer has not started
	if(global.item == spr_battery && !batteryStart) batteryStart = true;
	
	//tests to see if item is not a battery
	else if(global.item != spr_battery) batteryStart = false;
	
	//if the battery timer has started and the battery has already ended
	if(batteryStart && global.batteryTimer == -1) {
		
		global.batteryTimer = room_speed * 30;
		
	}
	//incrementes timer every frame
	if(global.batteryTimer > 0) global.batteryTimer--;
	//Once the timer has ended
	if(global.batteryTimer == 0){
	
		global.item = spr_noItem;
		global.itemName = "";
		
		global.batteryTimer = -1;
		batteryStart = false;	
	} 


#endregion

#region Music
	if(room == rm_solarRoom && audio_exists(snd_credits)) audio_play_sound(snd_credits,1,false);
	else audio_stop_sound(snd_credits);
	if(room == rm_safeRoom && audio_exists(snd_LowIntensity)) audio_play_sound(snd_LowIntensity,1,false);
	else audio_stop_sound(snd_LowIntensity)
	if(room == rm_factory && audio_exists(snd_midIntensity)) audio_play_sound(snd_midIntensity,1,false);
	else audio_stop_sound(snd_midIntensity);
	if(room == rm_StorageRoom && audio_exists(snd_midIntensity2)) audio_play_sound(snd_midIntensity2,1,false);
	else audio_stop_sound(snd_midIntensity2);
	if(room == rm_StorageRoom && audio_exists(snd_HighIntensity)) audio_play_sound(snd_HighIntensity,1,false);
	else audio_stop_sound(snd_HighIntensity);
	if(room == rm_solarTower && audio_exists(snd_TitleMusic)) audio_play_sound(snd_TitleMusic,1,false);
#endregion

#region Timer
	if(room!=rm_menu && !global.pause && !global.gameOver && !global.gameEnd){
		global.timer += 1/game_get_speed(gamespeed_fps); 
	}
#endregion