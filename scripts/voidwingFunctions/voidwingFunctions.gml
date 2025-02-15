function voidwingWander() {
	sprite_index = sprMove;
	image_speed = 1;
	
	// At dest. or given up
	if ((x == xTo) && (y == yTo)) || (timePassed > enemyWanderDistance / enemySpeed)
	{
		xspeed = 0;
		yspeed = 0;

		
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
	
function voidwingChase() {
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
}