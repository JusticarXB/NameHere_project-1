if(!global.gameOver){
	if(distance_to_object(obj_ROB) < obj_ROB.intrct_radius*2){

		//if item is dropping it doesn't create the E icon prevents a spawning multiple Icons or overlapping icons
		if(vspd = 0 && place_empty(x,y-25,obj_EIcon)) instance_create_layer(x, y-25, "iconLayer", obj_EIcon);
	
		//checks to see if player is within a certain radius of object and the "E" key was pressed
		if(distance_to_object(obj_ROB) < obj_ROB.intrct_radius && keyboard_check_pressed(ord("E"))){
		
			switch(object_index){
			
				case obj_batteries:
				
					global.batteries = true;
				
				break;
				
				case obj_converter:
				
					global.converters = true;
				
				break;
				
				case obj_panel:
				
					global.panels = true;
				
				break;
				
				case obj_hIW:
				
					global.hIW = true;
				
				break;
			
			
			}
			
			audio_play_sound(snd_menuBeep,4,false);
			
			instance_destroy();
		
		}
	}
}

vspd+=grv;
scr_collisionDetection(obj_KeyItemparent);