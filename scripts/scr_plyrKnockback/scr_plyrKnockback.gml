//@arg#1 enum specifying something as either vert or horz
enum knockback_Direction{

	HORZ,
	VERT


}



with(obj_ROB){
	if(!is_hit){
		#region horizontal knockback
	
		if(argument0 == knockback_Direction.HORZ){
	
			hasControl = false;
			vspd -= 3;
			hspd -= 10*image_xscale;
			plyr_hlth--;
			is_hit = true;
	
	
		}
	
	
		#endregion
	
		#region vertical knockback
	
		if(argument0 == knockback_Direction.VERT){
	
			hasControl = false;
			vspd -= 15;
			hspd -= 4*image_xscale;
			plyr_hlth--;
			is_hit = true;
	
	
		}
	
	
		#endregion
	
	
	}
}