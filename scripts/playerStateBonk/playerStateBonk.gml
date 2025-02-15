function playerStateBonk(){
	xspeed = lengthdir_x(speedBonk, direction-180);
	yspeed = lengthdir_y(speedBonk, direction-180);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedBonk);
	var collided = playerCollision();
	
	// Update Sprite
	sprite_index = playerBonk;
	image_index = CARDINAL_DIR - 2 
	
	// Change Height 
	// Credit: https://csanyk.com/2012/10/game-maker-wave-motion-tutorial/
	z = sin(((moveDistanceRemaining / distanceBonk) * pi)) * distanceBonkH;
	
	// Change State
	if (moveDistanceRemaining <= 0){
		state = playerStateFree;	
	}
	
}