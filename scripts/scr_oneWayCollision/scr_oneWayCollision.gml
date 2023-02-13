with(argument0){

		if(other.vspd > 0){
	
			if(place_meeting(x,y-other.vspd, other) && (!place_meeting(x,y,other) ) ){
		
				while(!place_meeting(x,y-1,other))	other.y +=1;
			
				other.vspd = 0;
		
			}
		}

}