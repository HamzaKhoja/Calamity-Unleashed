function calamityWander() {
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
		
		if (xspeed != 0) image_xscale = abs(image_xscale) *  sign(xspeed);
		
		
		var collided = enemyTileCollision();

	}
	
	// Check for Agro
	if (++agroCheck >= agroCheckDuration)
	{
		agroCheck = 0;
		if (instance_exists(oPlayer) && point_direction(x, y, oPlayer.x, oPlayer.y) <= enemyAgroRadius)
		{
			state = ENEMY_STATE.CHASE;
			target = oPlayer;
		}
	}
}

function calamityChase() {
	sprite_index = sprMove;
	if (instance_exists(target))
	{
		xTo = target.x;
		yTo = target.y;	
		
		var distanceToGo = point_distance(x, y, xTo, yTo);
		image_speed = 1;
		dir = point_direction(x, y, xTo, yTo);
		if (distanceToGo > enemySpeed){
			xspeed = lengthdir_x(enemySpeed, dir);
			yspeed = lengthdir_y(enemySpeed, dir);	
		}
		else {
			xspeed = lengthdir_x(distanceToGo, dir);
			yspeed = lengthdir_y(distanceToGo, dir);	
		}
		if (xspeed != 0) image_xscale = abs(image_xscale) * sign(xspeed);
		
		enemyTileCollision();

	}
	
	if (instance_exists(target) && point_distance(x, y, target.x, target.y) <= enemyAttackRadius)
	{
		state = ENEMY_STATE.ATTACK;
		
		sprite_index = sprAttack;
		image_index = 0;
		image_speed = 1;
		
		//xTo += lengthdir_x(8, dir);
		//yTo += lengthdir_y(8, dir);

	}
}
	
function calamityAttack() {
	var spd = enemySpeed;
	if (image_index < 2) spd = 0;
	//if (floor(image_index) == 3 || floor(image_index) == 5) image_speed = 0; 
	
	var distanceToGo = point_distance(x, y, xTo, yTo);
	
	if (distanceToGo < 4) && (image_index < 5) image_speed = 1;
	
	if (distanceToGo > spd)
	{
		dir = point_direction(x, y, xTo, yTo);
		xspeed = lengthdir_x(spd, dir);
		yspeed = lengthdir_y(spd, dir);
		
		if (xspeed != 0) image_xscale = abs(image_xscale) * sign (xspeed);
		
		if (enemyTileCollision() == true){
			xTo = x;
			yTo = y;	
		}
	}
	else{
		x = xTo;
		y = yTo;
		
		if (floor(image_index) == 5)
		{
			stateTarget = ENEMY_STATE.CHASE;
			stateWaitDuration = 15;
			state = ENEMY_STATE.WAIT;
		}
	}
}
	
function calamityHurt() {
	sprite_index = sprHurt;
	var distanceToGo = point_distance(x, y, xTo, yTo);
	if (distanceToGo > enemySpeed){
		image_speed = 1;
		dir = point_direction(x, y, xTo, yTo);
		xspeed = lengthdir_x(enemySpeed, dir);
		yspeed = lengthdir_y(enemySpeed, dir);	
		if (xspeed != 0) image_xscale = abs(image_xscale) * -sign(xspeed);
		
		// Collide & Move
		if (enemyTileCollision()) {xTo = x; yTo = y;}
		
	}
	else {
			x = xTo;
			y = yTo;
			if (statePrevious != ENEMY_STATE.ATTACK) state = statePrevious; 
			else state = ENEMY_STATE.CHASE;
		}
		
}

function calamityDeath(){
	with (oWalker){
		state = ENEMY_STATE.DIE;	
	}
	with (oStag){
		state = ENEMY_STATE.DIE;	
	}
	with (oBehemoth){
		state = ENEMY_STATE.DIE;	
	}
	with (oVoidwing){
		state = ENEMY_STATE.DIE;	
	}
	
	sprite_index = sprDeath;
	image_speed = 1;
	var distanceToGo = point_distance(x, y, xTo, yTo);
	
	if (!dropped){
		dropItems(x, y, entityDropList);
		dropped = true;
		audio_play_sound(seCalamityDeath, 1, 0);
	}
	
	if (distanceToGo > enemySpeed){
		dir = point_direction(x, y, xTo, yTo);
		xspeed = lengthdir_x(enemySpeed, dir);
		yspeed = lengthdir_y(enemySpeed, dir);	
		if (xspeed != 0) image_xscale = abs(image_xscale) * -sign(xspeed);
		
		// Collide & Move
		enemyTileCollision();
	}
	
	else {x = xTo; y = yTo;}
	
	if (image_index  + (sprite_get_speed(sprite_index)	/ game_get_speed(gamespeed_fps)) >= image_number){
		instance_destroy();
	}
}

function calamityStill(){
	
}