
with(argument0){

	if(other.vspd > 0){
	
		if(place_meeting(other.x, other.y + other.vspd, obj_oneWay)){
	
			while(!place_meeting(other.x, other.y+sign(other.vspd), obj_oneWay)) other.y += sign(other.vspd);
			other.vspd = 0;
	
		}
	
	}

}