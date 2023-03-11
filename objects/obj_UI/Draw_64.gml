
if(room != rm_menu){
	#region music
	audio_stop_sound(snd_TitleMusic);
	#endregion
	#region UI
		//GUI Setup
		draw_set_color(c_white);
		draw_set_font(fnt_earlyGameboy);
		draw_set_alpha(.5);
		draw_set_halign(fa_center);

		//Current health
		draw_set_halign(fa_left);
		if(!global.gameOver) draw_text_transformed(50, 50, "Health: " + string(obj_ROB.plyr_hlth),2,2,0);
		
		draw_set_halign(fa_center)
		//Held Item Box
			draw_rectangle(room_width - 150,50,room_width -50,150,false);

			//reseting Alpha and changing color to black
			draw_set_alpha(1);
			draw_set_color(c_black);



			// current Item
			draw_text(room_width - 100, 175, global.itemName);
			draw_sprite_ext(global.item,image_index, room_width-100, 100, 4,4,0,image_blend,1);
		
			#region displaying battery timer
				if(global.batteryTimer != -1 && batteryStart){
					draw_set_halign(fa_center);
					draw_text_transformed(room_width-100,200,global.batteryTimer/room_speed,2,2,0);
				}
			#endregion
			
			#region displaying global timer
				
				draw_set_color(c_white);
				draw_set_halign(fa_center);
				draw_text_transformed(room_width/2,100,global.timer,6,6,0);
			
			#endregion

		
	#endregion
	#region Death Screen

	if(!instance_exists(obj_ROB)){
		audio_play_sound(snd_plyrDeath,1,false);
		//fades screen to black
		draw_set_alpha(deathScreen_alpha);
		draw_set_color(c_black);
		draw_rectangle(0,0,room_width,room_height,false);
	
		//increases alpha of the death screen
		if(deathScreen_alpha <= 1){
	
			deathScreen_alpha +=.01;
	
		}
	
		draw_set_color(c_red);
		draw_text_transformed(room_width/2, room_height/2-50 ,"Humanity is Lost", 8,8,image_angle);
	
		//once death screen reaches max
		if(deathScreen_alpha == 1.01){
	
			draw_set_alpha(prompt_alpha);
			draw_set_color(c_white);
			draw_text_transformed(room_width/2, (room_height/2) + 85 ,"Press 'Alt' + 'R' to Respawn", 3,3,image_angle);
			prompt_alpha +=.01;
		}

	}
	#endregion
}else{
	audio_play_sound(snd_TitleMusic, 1, true);
}


if(global.gameEnd && !global.pause && !global.newGame && room!=rm_menu){
	


draw_set_alpha(endscreen_alpha);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,false);

	if(endscreen_alpha <= 1){
	
			endscreen_alpha +=.01;
	
	}
	
	draw_set_color(c_aqua);
	draw_text_transformed(room_width/2, room_height/2-50 ,"Humanity is Saved", 8,8,image_angle);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text_transformed(room_width/2, 150, global.timer, 6,6,0);
	draw_set_halign(fa_left);
	for(i = 0; i<creditsLength; i++){
	
		var creditsTXT = credits[i];
		
		creditsTXTyStart = room_height	- 100 - 40 * i;
		
		draw_text_transformed(0 +75,creditsTXTyStart,creditsTXT,3,3,0);
	
	
	}
	
	
}
