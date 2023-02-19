//Set-up
name = "Interactable Object";
sprite = spr_interactExample;

//Collision & gravity
hspd = 0;
vspd = 0;

//The switch statement dictates how you change the held item variable
switch(object_index){


	case obj_battery:
		
		name = "Battery";
		sprite = spr_battery;
		
	break;


}