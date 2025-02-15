function activateLiftable(item){

	if (global.iLifted == noone){
		audio_play_sound(seLiftObject, 1, 0);
		playerActAnimation(playerLift);
		
		spriteIdle = playerCarryIdle;
		spriteWalk = playerCarryWalk;
		
		global.iLifted = item;
		with (global.iLifted){
			lifted = true;
			persistent = true;

		}
	}
}