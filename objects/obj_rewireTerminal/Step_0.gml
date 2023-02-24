if(distance_to_object(obj_ROB) < obj_ROB.intrct_radius*2 && !global.logicGate){
	
	image_index = 1;
	
	if(distance_to_object(obj_ROB) < obj_ROB.intrct_radius && keyboard_check_pressed(ord("E")) && global.item == spr_battery){
	
		global.logicGate = true;
		global.item = spr_noItem;
		global.itemName = "";
		
	
	}
} else if(image_index = 1 && distance_to_object(obj_ROB) > obj_ROB.intrct_radius*2){

image_index = 0;

}