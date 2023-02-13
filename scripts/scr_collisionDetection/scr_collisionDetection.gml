with(argument0){

	//vertical collision
	if(place_meeting(other.x,other.y+other.vspd, obj_block)){
	
		while(!place_meeting(other.x,other.y+sign(other.vspd), obj_block)) other.y +=sign(other.vspd);
		other.vspd = 0;
	}
	other.y += other.vspd;
	
	//horizontal collision
	if(place_meeting(other.x+other.hspd, other.y, obj_block)){
	
		while(!place_meeting(other.x+sign(other.hspd), other.y, obj_block)) other.x+=sign(hspd);
		other.hspd = 0;
	}
	other.x += other.hspd;

}