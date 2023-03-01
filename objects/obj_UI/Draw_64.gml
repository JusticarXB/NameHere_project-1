
if(room != rm_menu){
	#region UI
		//GUI Setup
		draw_set_color(c_white);
		draw_set_font(fnt_earlyGameboy);
		draw_set_alpha(.5);
		draw_set_halign(fa_center);

		//Current health
		if(!global.gameOver) draw_text(150, 50, "Health: " + string(obj_ROB.plyr_hlth));

		//Held Item Box
		draw_rectangle(room_width - 150,50,room_width -50,150,false);

		//reseting Alpha and changing color to black
		draw_set_alpha(1);
		draw_set_color(c_black);



		// current Item
		draw_text(room_width - 100, 175, global.itemName);
		draw_sprite(global.item,0,room_width-100,100);
		
		
		#region displaying battery timer
			if(global.batteryTimer != -1 && batteryStart){
				draw_set_halign(fa_center);
				draw_text_transformed(960,75,global.batteryTimer/room_speed,4,4,0);
			}
		#endregion
	#endregion
	#region Death Screen

	if(!instance_exists(obj_ROB)){

		//fades screen to black
		draw_set_alpha(deathScreen_alpha);
		draw_set_color(c_black);
		draw_rectangle(0,0,room_width,room_height,false);
	
		//increases alpha of the death screen
		if(deathScreen_alpha <= 1){
	
			deathScreen_alpha +=.01;
	
		}
	
		draw_set_color(c_red);
		draw_text_transformed(room_width/2, room_height/2-50 ,"YOU DIED", 8,8,image_angle);
	
		//once death screen reaches max
		if(deathScreen_alpha == 1.01){
	
			draw_set_alpha(prompt_alpha);
			draw_set_color(c_white);
			draw_text_transformed(room_width/2, (room_height/2) + 85 ,"Press 'Alt' + 'R' to Restart", 3,3,image_angle);
			prompt_alpha +=.01;
		}

	}
	#endregion
}
