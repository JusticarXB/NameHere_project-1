//health
if(plyr_hlth <= 0) instance_destroy();
else if(plyr_hlth > 4) plyr_hlth = 4;

#region movement controls
if(hasControl){
jump = keyboard_check_pressed(vk_space);
move_up = keyboard_check_pressed(ord("W"));
move_right = keyboard_check(ord("D"));
move_down = keyboard_check(ord("S"));
move_left = keyboard_check(ord("A"));

//movement left and right
var move = move_right - move_left;

hspd = move * mv_spd;

vspd += grv;

if(move_left) image_xscale = -1;
if(move_right) image_xscale = 1;

//One way platform collision detection
if(!move_down)scr_oneWayCollision(obj_oneWay);

//Directional collision
scr_directionalCollision();

if(is_hit){ 
		alarm[0] = game_get_speed(gamespeed_fps)/4;
		if(image_alpha > .6)image_alpha -= alarm_get(0)/20;
	}


//jump collision
if(jump || move_up) scr_calculateJump(obj_ROB);
}else {
	move_up = 0;
	move_right = 0;
	move_left= 0;
	jump = 0;
	move_down = 0;
	vspd+=grv;
}

//Collision detection for block object
scr_collisionDetection(obj_ROB);



#endregion

