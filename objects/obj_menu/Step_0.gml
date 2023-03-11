
if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)){
	audio_play_sound(snd_menuBeep,2,false);
	if(currentOption + 1 > menuItems -1) currentOption = 0;
	else currentOption++;

}

if(keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)){
	audio_play_sound(snd_menuBeep,2,false);
	if(currentOption - 1 < 0) currentOption = menuItems -1;
	else currentOption--;

}

if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)){
	audio_play_sound(snd_menuButtons,3,false);
	if(currentOption == 1){ 
		
		scr_slideTransition(Trans_Mode.NEXT);
		
		global.newGame = true;	
	}
	
	if(currentOption == 0) game_end();



}