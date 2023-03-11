



if(global.pause) //draw the "frozen" image to screen
{
	surface_set_target(application_surface);
	if(surface_exists(pauseSurf)){ 
		//Disabling alpha blending to draw faster
		gpu_set_blendenable(false);
		draw_surface(pauseSurf, 0, 0);
		//renabling alpha blending
		gpu_set_blendenable(true);
		#region menu options
		
		//making the screen darker
		draw_set_font(fnt_earlyGameboy);
		draw_set_color(c_black);
		draw_set_alpha(.5);
		draw_rectangle(0,0,room_width,room_height,false);
		
		//drawing the title
		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_set_halign(fa_right);
		draw_set_valign(fa_top);
		draw_text_transformed(room_width-100,100,"Solar Quest", 8, 8, 0);
		
		//drawing objectives
		for(i = 0; i<objectiveItems; i++){
		
			var OBJTXT = objective[i];
			
			//if objective has been completed;
			
			OBJYStart = room_height - 250 - 45 * i;
			
			if( (i == 0 && global.hIW) || (i == 1 && global.panels) || (i==2 && global.converters) || (i==3 && global.batteries) || (i==4 && global.elevator) ) draw_set_color(c_green);
		
		
			draw_set_halign(fa_left);		
			draw_text_transformed(65, OBJYStart, OBJTXT, 2, 2,0);
			
			draw_set_color(c_white);
			draw_set_halign(fa_right);
		}
		
		
		//drawing menu options & functionality
		for(i = 0; i < menuItems; i++){
			
			var displayTXT = menu[i];
			
			//drawing current selected option
			if(i == menuSelection) displayTXT = string_insert("~ ", displayTXT ,0);
			
			//text spacing
			textYStart = room_height - 250 - 75 * i;
			
			//drawing each menu option
			draw_text_transformed(room_width-100,textYStart, displayTXT, 3,3,0);
			
		}
		
		//navigating the menu
		if(keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)){ 
			audio_play_sound(snd_menuBeep,1,false);
			if(menuSelection-1 < 0) menuSelection = menuItems-1;
			else menuSelection --;
			
		}
		else if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)){
			audio_play_sound(snd_menuBeep,1,false);
			if(menuSelection+1 > menuItems-1) menuSelection = 0;
			else menuSelection ++;
			
		}
		
		//selecting options
		if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)){
			audio_play_sound(snd_menuButtons,1,false);
			if(menuSelection == 1){ 
	
				global.pause=false;
				instance_activate_all();
				if(surface_exists(pauseSurf)) surface_free(pauseSurf);
				if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
			}
			
			if(menuSelection == 0){
				global.pause = false;
				instance_activate_all();
				if(surface_exists(pauseSurf)) surface_free(pauseSurf);
				if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
				scr_slideTransition(Trans_Mode.GOTO, rm_menu);
				
			}
		
		}
		
		
		#endregion
	}
	else //restoring from buffer
	{
		pauseSurf = surface_create(resW, resH);
		
		buffer_set_surface(pauseSurfBuffer, pauseSurf, 0);
		
	
	
	}

	surface_reset_target();

}

if(keyboard_check_pressed(vk_escape) && room != rm_menu){ //toggling pause
	audio_play_sound(snd_menuBeep,1,false);
	if(!global.pause){
	
		global.pause = true;
		
		//deactive everything other than this instance
		instance_deactivate_all(true);
		
		//capture the game moment 
		pauseSurf = surface_create(resW,resH);
		surface_set_target(pauseSurf);
		draw_surface(application_surface, 0,0);
		surface_reset_target();
		
		//back up this surface to a buffer in case we lose it 
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW*resH*4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
		
	
	}
	else{ //unpause game
	
		global.pause = false;
		instance_activate_all();
		if(surface_exists(pauseSurf)) surface_free(pauseSurf);
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	
	}

}

draw_set_alpha(1);