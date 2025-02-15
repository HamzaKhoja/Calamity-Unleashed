with (oPlayer) {
	if (state != playerStateDead) state = playerStateTransition;  
}

if (leading == OUT)
{
	percent = min(1, percent + TRANSITION_SPEED);
	if (percent >=1) {
		room_goto(target);
		leading = IN;
	}
	//oPlayer.image_alpha = 1-percent*2;

}
else //leading = IN;
{
	percent = max(0, percent-TRANSITION_SPEED);
	if (percent <= 0) {
		with (oPlayer) state = playerStateFree;	
		instance_destroy();
	}
	//oPlayer.image_alpha = 1-percent*2;

}