with(obj_ROB){

	NewX = other.targetx;
	NewY = other.targety;
	hspd = 0;
	vspd = 0;
	if(hasControl){
	
		hasControl = false;
		scr_slideTransition(Trans_Mode.GOTO, other.target);

	}


}