function catWander() {
	sprite_index = sprMove;
	// At dest. or given up
	if ((x == xTo) && (y == yTo)) || (timePassed > enemyWanderDistance / enemySpeed)
	{
		xspeed = 0;
		yspeed = 0;
		
		// End move animation
		if (image_index < 1) {
			image_speed = 0;
			image_index = 0;
		}
		
		// Set new target dest.
		if (++wait >= waitDuration) {
			ran = irandom(1);
			if (ran == 1) state = ENEMY_STATE.WAIT;
			
			wait = 0;
			timePassed = 0;
			dir = point_direction(x, y, xstart, ystart) + irandom_range(45, -45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y(enemyWanderDistance, dir);
		}
	}
	
	// Move towards new dest.
	else
	{
		timePassed++;	
		image_speed = 1;
		var distanceToGo = point_distance(x, y, xTo, yTo);
		var speedThisFrame = enemySpeed;
		if (distanceToGo < enemySpeed) speedThisFrame = distanceToGo;
		point_direction(x, y, xTo, yTo);
		xspeed = lengthdir_x(speedThisFrame, dir);
		yspeed = lengthdir_y(speedThisFrame, dir);
		
		var collided = enemyTileCollision();

	}
}

function catAnimateSprite(){

	var totalFrames = sprite_get_number(sprite_index) / 8;
	direction = dir;
	image_index = localFrame + (CARDINAL_DIR8 * totalFrames);
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
	
	// if animation would loop on next game step
	if (localFrame >= totalFrames){
		animationEnd = true;
		localFrame -= totalFrames;
	} 
	else animationEnd = false;
	
	if (animationEnd) && (sprite_index == sprCatLay){
		sprite_index = sprCatLaying;
		totalFrames = sprite_get_number(sprite_index) / 8;
		image_index = localFrame + (CARDINAL_DIR8 * totalFrames);
	}
}

function catNap(){
	if (sprite_index != sprCatLaying){
		sprite_index = sprCatLay;
		
	}
	else {
		ran = irandom(350);
		if (ran == 1) state = ENEMY_STATE.WANDER;	
	}	
}

function catSit(){
	if (sprite_index != sprCatSitting){
		sprite_index = sprCatSit;
		
	}
	else {
		ran = irandom(350);
		if (ran == 1) state = ENEMY_STATE.WANDER;	
	}	
}