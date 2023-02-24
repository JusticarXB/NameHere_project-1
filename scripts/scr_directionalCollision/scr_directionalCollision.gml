with(obj_ROB){
	if(!is_hit){
		if(place_meeting(x+hspd, y, obj_spike)){

				hasControl = false;
				vspd -= 3;
				hspd -= 10*image_xscale;
				plyr_hlth--;
				is_hit = true;
		}


		if(place_meeting(x,y+vspd, obj_spike) && vspd > 0){

				hasControl = false;
				vspd -= 15;
				hspd -= 4*image_xscale;
				plyr_hlth--;
				is_hit = true;

		}
		
	}
}