
#region movement controls

jump = keyboard_check_pressed(vk_space);
move_up = keyboard_check_pressed(ord("W"));
move_right = keyboard_check(ord("D"));
move_down = keyboard_check(ord("S"));
move_left = keyboard_check(ord("A"));

//movement left and right
var move = move_right - move_left;

hspd = move * mv_spd;

vspd += grv;

//One way platform collision detection
if(!move_down)scr_oneWayCollision(obj_oneWay);

//jump collision
if(jump || move_up) scr_calculateJump(obj_ROB);

//Collision detection
scr_collisionDetection(obj_ROB);



#endregion

