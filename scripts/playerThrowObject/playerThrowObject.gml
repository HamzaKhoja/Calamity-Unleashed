function playerThrowObject(){
	
	audio_play_sound(seThrowObject, 1, 0);
	
	with (global.iLifted)
	{
		lifted = false;
		persistent = false;
		thrown = true;
		z = 12;
		throwPeakHeight = z + 30;
		throwDistance = entityThrowDistance;
		throwDistanceTravelled = 0;
		throwStartPercent = (z/throwPeakHeight) * 0.5;
		throwPercent = throwStartPercent;
		direction = other.direction;
		xstart = x;
		ystart = y;
		
	}
	
	playerActAnimation(playerThrow);
	spriteIdle = playerIdle;
	spriteWalk = playerWalk;
	global.iLifted = noone;
}