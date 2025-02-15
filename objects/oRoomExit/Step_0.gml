if (instance_exists(oPlayer) && position_meeting(oPlayer.x, oPlayer.y, id))
{
	if (!instance_exists(oTransition) && oPlayer.state != playerStateDead){
		global.targetRoom = targetRoom;
		global.targetX = targetX;
		global.targetY = targetY;
		global.targetDirection = oPlayer.direction;
	
		// room_goto(targetRoom);
		with (oPlayer) state = playerStateTransition;
		roomTransition(TRANS_TYPE.FADE, targetRoom);
		instance_destroy();
		if (audio_is_playing(BossMusic)){
			audio_sound_gain(BossMusic, 0, 1000);
		}
	}
}