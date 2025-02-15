if (sprite_index == CalamityDoorOpening){
	sprite_index = CalamityDoorOpen;
	instance_create_depth(x, y, depth, oRoomExit);
	
	oRoomExit.targetRoom = rmStarting;
	oRoomExit.targetX = 56;
	oRoomExit.targetY = 296;	
}