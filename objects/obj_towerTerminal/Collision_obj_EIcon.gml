//check to see if object exists above the object
if(!place_empty(x,y-25,obj_EIcon)){
	if(!global.gameOver){
		//checks to see if player is not in the interact radius of the item
		if(distance_to_object(obj_ROB) > obj_ROB.intrct_radius){
	
			//destroys the E-icon
			instance_destroy(other);
	
		}

	}
}