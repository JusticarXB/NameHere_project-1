//gravity
vspd += grv;
//collision
scr_collisionDetection(obj_interactParent);

#region Interactability functionality
if(!global.gameOver){
	if(distance_to_object(obj_ROB) < obj_ROB.intrct_radius*2){

		if(vspd = 0) instance_create_layer(x, y-25, "iconLayer", obj_EIcon);
	
		if(distance_to_object(obj_ROB) < obj_ROB.intrct_radius && keyboard_check_pressed(ord("E"))){
		
		
			#region when the player picks up another Item with one already in their inventory

				if(global.item != spr_noItem){
					if(item != obj_interactParent){
						if(place_empty(x+20*obj_ROB.image_xscale, obj_ROB.y,obj_block)){
			
							instance_create_layer(x+20*obj_ROB.image_xscale, obj_ROB.y, "Instances", item);
			
						} else if(place_empty(x-20*obj_ROB.image_xscale, obj_ROB.y, obj_ROB)) {
			
							instance_create_layer(x-20*obj_ROB.image_xscale,obj_ROB.y,"Instances", item);
			
						} else {
			
							instance_create_layer(obj_ROB.x,obj_ROB.y - 20, "Instances", item);
			
						}
					}
				}

			#endregion
		
			//changes global variables which updates player "inventory"]
			global.itemName = name;
			global.item = sprite;
		
			//Destroys Instance 
			instance_destroy();
		
		
		}

	} 
}
#endregion
