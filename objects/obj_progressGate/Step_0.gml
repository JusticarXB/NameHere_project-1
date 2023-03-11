if(!global.gameOver){

	if(nextItem == 1){
		if(global.batteries) instance_destroy();

	}
	else if(nextItem == 2){
		if(global.converters) instance_destroy();

	}
	else if(nextItem == 3){
		if(global.panels) instance_destroy();

	}
	else if (nextItem == 4){
		if(global.hIW) instance_destroy();

	}

}