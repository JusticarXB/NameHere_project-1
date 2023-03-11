//Set-up
name = "Interactable Object";
sprite = spr_interactExample;
item = obj_interactParent;

//Collision & gravity
hspd = 0;
vspd = 0;


//The switch statement dictates how you change the held item variable
switch(object_index){


	case obj_battery:
		
		name = "Battery";
		sprite = spr_battery;
		item = obj_battery;
		
	break;
	
	//copy and pasting all of the information from case batteries to obj_wires and adjusting accordingly
	case obj_wires:
		name = "Wires";
		sprite = spr_wire;
		item = obj_wires;
	
	
	break;


}