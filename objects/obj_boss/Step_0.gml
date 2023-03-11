//health
if(emHealth <=0) instance_destroy();


//movement
hspd = mvspd * bDir

//checking for obstacles
if(place_meeting(x+hspd*2,y,obj_block)) bDir *= -1;

if(hit){
	alarm[0] = game_get_speed(gamespeed_fps)/4;
	if(image_alpha > .6) image_alpha -= .01
	audio_play_sound(dmgSnd,4,false,,,random_range(0.5,.6));

}

//Putting in Projectiles?
if(canFire){

	var projectile = instance_create_layer(x,y-20, "Instances", obj_poison);
	if(!global.gameOver) projectile.direction = point_direction(x,y,obj_ROB.x,obj_ROB.y);
	else projectile.direction = 90;
	
	projectile.speed = mvspd*2;
	
	canFire = false;
	
	alarm[1] = game_get_speed(gamespeed_fps) *1.25;
	
	
}

//collision
scr_collisionDetection(obj_boss);

