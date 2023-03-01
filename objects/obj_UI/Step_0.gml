
#region starting new game
	if(global.newGame){
	
		//resetting all values
		global.logicGate = false;
		global.itemName = "";
		global.item = spr_noItem;
		global.batteryTimer = -1;
	
		//turning new game off
		global.newGame = false;

	}
#endregion

#region	Battery countdown
	//tests to see if current item is battery and the timer has not started
	if(global.item == spr_battery && !batteryStart) batteryStart = true;
	
	//tests to see if item is not a battery
	else if(global.item != spr_battery) batteryStart = false;
	
	//if the battery timer has started and the battery has already ended
	if(batteryStart && global.batteryTimer == -1) {
		
		global.batteryTimer = room_speed * 30;
		
	}
	//incrementes timer every frame
	if(global.batteryTimer > 0) global.batteryTimer--;
	//Once the timer has ended
	if(global.batteryTimer == 0){
	
		global.item = spr_noItem;
		global.itemName = "";
		
		global.batteryTimer = -1;
		batteryStart = false;	
	} 


#endregion