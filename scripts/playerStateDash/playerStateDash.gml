function playerStateDash(){
	xspeed = lengthdir_x(dashSpeed, direction);
	yspeed = lengthdir_y(dashSpeed, direction);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - dashSpeed);
	var collided = playerCollision();
	
	// Update Sprite
	sprite_index = playerDash;
	var totalFrames = sprite_get_number(sprite_index) / 4;
	image_index = (CARDINAL_DIR * totalFrames) + (( 1 - (moveDistanceRemaining / dashDistance)) * totalFrames);
	
	// Change State
	if (moveDistanceRemaining <= 0){
		state = playerStateFree;	
	}
	
	if (collided) {
		state = playerStateBonk;
		audio_play_sound(seBonk, 1, 0);
		moveDistanceRemaining = distanceBonk;
		screenShake(4, 20);
	}
}