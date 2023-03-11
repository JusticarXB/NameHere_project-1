if(!global.gameOver){
	if(distance_to_object(obj_ROB) < obj_ROB.intrct_radius*2){
	//if item is dropping it doesn't create the E icon prevents a spawning multiple Icons or overlapping icons
		if(vspd = 0 && place_empty(x,y-25,obj_EIcon)) instance_create_layer(x, y-25, "iconLayer", obj_EIcon);

	if(distance_to_object(obj_ROB) < obj_ROB.intrct_radius && keyboard_check_pressed(ord("E"))){
		if(global.batteries && global.converters && global.panels && global.hIW) global.elevator = true;
		scr_slideTransition(Trans_Mode.GOTO, rm_solarTower);
		}
	}
}

vspd+=grv;

image_speed = 0;

if(global.elevator || global.gameEnd) image_index = 1;

scr_collisionDetection(obj_elevatorTerminal);