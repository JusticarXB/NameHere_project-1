


//if enemy health is less than or equal to 0 enemy dies
if(emHealth <= 0) instance_destroy();



//enemy is hit then it flashes to give feedback to the player
if(hit){
	alarm[0] = game_get_speed(gamespeed_fps)/4;
	if(image_alpha > .6) image_alpha -= .01
	audio_play_sound(dmgSnd,4,false,,,random_range(0.5,.6));

}




//basic movement
hspd = mvspd * dir;
vspd+=grv;

//if agent is about to hit a wall they switch dir
if(place_meeting(x+hspd,y,obj_block) || !instance_place(x+hspd*3,y+1,obj_block)){
	
	dir *=-1;
	image_xscale = dir;
}

//collision
scr_collisionDetection(obj_enemyParent);

