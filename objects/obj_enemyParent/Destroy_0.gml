if(droppedItem != noone) instance_create_layer(x,y,"Instances", droppedItem);
audio_stop_sound(snd_corruptedRobotHit);
audio_stop_sound(snd_racRoachHit);
switch(object_index){

case obj_corruptedRobot: 

audio_play_sound(snd_corruptedRobotDeath,2, false);
instance_create_layer(x,y,"Instances", obj_goldenHeart);
break;



case obj_racRoach:
audio_play_sound(snd_racRoachDeath,2,false);
instance_create_layer(x,y,"Instances", obj_heart);
break;


}