//gravity
vspd += grv;
//collision
scr_collisionDetection(obj_interactParent);

#region Interactability functionality
if(!global.gameOver){
	if(distance_to_object(obj_ROB) < obj_ROB.intrct_radius*2){

		//if item is dropping it doesn't create the E icon prevents a spawning multiple Icons or overlapping icons
		if(vspd = 0 && place_empty(x,y-25,obj_EIcon)) instance_create_layer(x, y-25, "iconLayer", obj_EIcon);
	
		//checks to see if player is within a certain radius of object and the "E" key was pressed
		if(distance_to_object(obj_ROB) < obj_ROB.intrct_radius && keyboard_check_pressed(ord("E"))){
		
		
			#region when the player picks up another Item with one already in their inventory
				//checks to see if player has not already added an item to inventory
				if(global.item != spr_noItem){
					//checks to see if item that is being held is not the default item
					if(item != obj_interactParent){
						//checks to see if space in front of the playe is empty
						if(place_empty(x+20*obj_ROB.image_xscale, obj_ROB.y,obj_block)){
			
							instance_create_layer(x+20*obj_ROB.image_xscale, obj_ROB.y, "Instances", item);
			
						}
						//checks to see if space behind the player is empty
						else if(place_empty(x-20*obj_ROB.image_xscale, obj_ROB.y, obj_ROB)) {
			
							instance_create_layer(x-20*obj_ROB.image_xscale,obj_ROB.y,"Instances", item);
			
						} 
						//just places the item above the player dropping into them this should never have a conflict since the player and item cannot collide
						else {
			
							instance_create_layer(obj_ROB.x,obj_ROB.y - 20, "Instances", item);
			
						}
					}
				}

			#endregion
		
			//changes global variables which updates player "inventory"]
			global.itemName = name;
			global.item = sprite;
			
			if(sprite == spr_battery) global.batteryTimer = room_speed * timer;

			//Destroys Instance 
			instance_destroy();
		
		
		}

	} 
}
#endregion
