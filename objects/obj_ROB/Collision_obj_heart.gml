if(plyr_hlth != 4){
	plyr_hlth += other.healthPoints;
	audio_play_sound(snd_menuBeep,3,false);
	instance_destroy(other);
}