//health
if(plyr_hlth <= 0) instance_destroy();
else if(plyr_hlth > 4) plyr_hlth = 4;

#region movement/controls
if(hasControl){

move_up = keyboard_check_pressed(ord("W"));
move_right = keyboard_check(ord("D"));
move_down = keyboard_check(ord("S"));
move_left = keyboard_check(ord("A"));

//combat
shoot = keyboard_check(vk_space);
gun_right = keyboard_check(vk_right);
gun_left = keyboard_check(vk_left);
gun_up = keyboard_check(vk_up);
gun_down = keyboard_check(vk_down);

#region gun angles


if(gun_up && gun_right) gun_rotation = 45;

if(gun_up && gun_left) gun_rotation = 135;

if(gun_left && gun_down) gun_rotation = 225;

if(gun_down && gun_right) gun_rotation = 315;

if(gun_right && !gun_up && !gun_down) gun_rotation = 0;

if(gun_up && !gun_right && !gun_left) gun_rotation = 90;

if(gun_left && !gun_up && !gun_down) gun_rotation = 180;

if(gun_down && !gun_left && !gun_right) gun_rotation = 270;

#endregion
//movement left and right
var move = move_right - move_left;

hspd = move * mv_spd;

vspd += grv;

//animation

if(hspd == 0 && !instance_exists(obj_enemyParent)) sprite_index = spr_ROBidle;
else sprite_index = spr_ROBwalk;

if(instance_exists(obj_enemyParent)) sprite_index = spr_ROBtank;

if(move_left) image_xscale = -1;
if(move_right) image_xscale = 1;

//One way platform collision detection
if(!move_down)scr_oneWayCollision(obj_ROB);

//Directional collision
scr_directionalCollision();

if(is_hit){ 
		audio_play_sound(snd_plyrHit,2,false);
		alarm[0] = game_get_speed(gamespeed_fps)/4;
		if(image_alpha > .6) image_alpha -= alarm_get(0)/20;
	}


//jump collision
if(move_up){ 
	audio_play_sound(snd_jump,2,false);
	scr_calculateJump(obj_ROB);
	}
}else {
	move_up = 0;
	move_right = 0;
	move_left= 0;
	move_down = 0;
	vspd+=grv;
}

//Collision detection for block object
scr_collisionDetection(obj_ROB);



#endregion

#region combat

	if(shoot && can_shoot){
		
		
		#region bullet spawning spot
		if(gun_rotation == 0) bullet = instance_create_layer( x + sprite_xoffset * image_xscale, y, "Instances", obj_bullet);
		if(gun_rotation == 45) bullet = instance_create_layer( x + sprite_xoffset * image_xscale, y - sprite_yoffset, "Instances", obj_bullet);
		if(gun_rotation == 90) bullet = instance_create_layer(x , y - sprite_yoffset, "Instances", obj_bullet);
		if(gun_rotation == 135) bullet = instance_create_layer( x - sprite_xoffset * image_xscale, y - sprite_yoffset, "Instances", obj_bullet);
		if(gun_rotation == 180) bullet = instance_create_layer( x - sprite_xoffset * image_xscale, y, "Instances", obj_bullet);
		if(gun_rotation == 225) bullet = instance_create_layer( x - sprite_xoffset * image_xscale, y + sprite_yoffset, "Instances", obj_bullet);
		if(gun_rotation == 270) bullet = instance_create_layer(x, y + sprite_yoffset, "Instances", obj_bullet);
		if(gun_rotation == 315) bullet = instance_create_layer( x + sprite_xoffset * image_xscale, y + sprite_yoffset, "Instances", obj_bullet);
		#endregion
		
		bullet.direction = gun_rotation;
		bullet.speed = mv_spd + 2;
		
		audio_play_sound(snd_pew,2,false);
		
		can_shoot = false;
		alarm[1] = game_get_speed(gamespeed_fps)/2;
	
	}

#endregion
