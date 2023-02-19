if(place_empty(x,y+25,obj_interactParent)) instance_destroy();
if(!global.gameOver){
	if(distance_to_object(obj_ROB) > obj_ROB.intrct_radius) instance_destroy();
}