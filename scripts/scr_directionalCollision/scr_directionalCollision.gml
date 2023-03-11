with(obj_ROB){

	if(place_meeting(x+hspd, y, obj_spike) || place_meeting(x+hspd, y, obj_enemyParent) || place_meeting(x+hspd,y,obj_poison)){

		scr_plyrKnockback(knockback_Direction.HORZ);
				
	}


	if( ( place_meeting(x,y+vspd, obj_spike) || place_meeting(x,y+vspd, obj_enemyParent) || place_meeting(x,y+vspd,obj_poison) )&& vspd > 0 ){

		scr_plyrKnockback(knockback_Direction.VERT);

	}
		
}