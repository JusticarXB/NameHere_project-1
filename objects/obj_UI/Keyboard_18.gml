//Cheat Codes
if(keyboard_check(ord("R")) && global.gameOver){
	if(room != rm_test){
		
		instance_destroy(obj_camera);
		scr_slideTransition(Trans_Mode.GOTO, rm_test);
		
	}else{
		
		instance_create_layer(88,90,"Instances",obj_ROB);
		
	}
	
	global.gameOver = false;
}