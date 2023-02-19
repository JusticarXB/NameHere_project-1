//gravity
vspd += grv;
//collision
scr_collisionDetection(obj_interactParent);

#region Interactability functionality
if(distance_to_object(obj_ROB) < obj_ROB.intrct_radius*2){

	
	instance_create_layer(x, y-25, "iconLayer", obj_EIcon);
	
	if(distance_to_object(obj_ROB) < obj_ROB.intrct_radius && keyboard_check_pressed(ord("E"))){
		
		
		//changes global variables which updates player "inventory"]
		global.itemName = name;
		global.item = sprite;
		
		//Destroys Instance 
		instance_destroy();
		
		
	}

} 

#endregion