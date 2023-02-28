switch(object_index){

	case obj_horizontal:
		
		
		#region platform movement
			hspd = platDir * movespd;
			var wallCollision = place_meeting(x+hspd, y, obj_block);
			var hplatformCollision = place_meeting(x+hspd,y,obj_oneWay);
			if(wallCollision || hplatformCollision) platDir *= -1;
			
			
			#endregion
		#region moving the player with platform
		with(obj_ROB){
		
			if(!place_meeting(x+other.hspd, y, obj_block)){
			
				if(place_meeting(x,y+1,other) && !place_meeting(x,y,other)) x += other.hspd;
				
			}
		
		}
		
		#endregion
		//Limits platform movement
		if(x+hspd < xstart-platformEndpoints || x+hspd > xstart+platformEndpoints) platDir *= -1;
		
		x+=hspd;	
		
	break;
	
	case obj_vertical:
		#region platform movement
			vspd = platDir * movespd;
			var heightOffset = 100;
			var upDownWallCollisions = place_meeting(x, y+vspd+(heightOffset*platDir), obj_block);
			var vplatformCollision = place_meeting(x,y+vspd, obj_oneWay);
			if(upDownWallCollisions || vplatformCollision) platDir *= -1;
		#endregion
		#region move player with platform
			with(obj_ROB){
			
				if(place_meeting(x,y+abs(other.vspd), other) && !place_meeting(x,y,other)) y += other.vspd;
			
			}
		#endregion
		
		y+=vspd;
	break;

	
}
	