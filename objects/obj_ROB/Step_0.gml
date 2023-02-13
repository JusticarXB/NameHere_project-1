
#region movement controls

jump = keyboard_check_pressed(vk_space);
move_up = keyboard_check_pressed(ord("W"));
move_right = keyboard_check(ord("D"));
move_down = keyboard_check(ord("S"));
move_left = keyboard_check(ord("A"));

//movement left and right
var move = move_right - move_left;

hspd = move * mv_spd;

vspd+= grv;

//jump collision
if(place_meeting(x,y+1, obj_block) || place_meeting(x,y+1,obj_oneWay) &&  (move_up || jump)) vspd -= jmp_spd;



#endregion

