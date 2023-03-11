image_index = 0;
image_speed=0;
vspd = 0;
hspd = 0;
grv = 0.3;

comparitive = obj_interactParent;
activated = false;

switch(object_index){

case obj_BatteryTerminal:

comparitive = obj_battery;

break;


case obj_WireTerminal:

comparitive = obj_wires;

break;

}
