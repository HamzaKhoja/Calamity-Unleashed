function enemyTileCollision(){
	
	var collision = false;
	
	// Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + xspeed, y)) {
		x -= x mod TILE_SIZE;
		if (sign(xspeed) == 1) x += TILE_SIZE - 1;	
		xspeed = 0;
		collision = true;
	}
	x += xspeed;
	
	// Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + yspeed)) {
		y -= y mod TILE_SIZE;
		if (sign(yspeed) == 1) y += TILE_SIZE - 1;	
		yspeed = 0;
		collision = true;
	}
	y += yspeed;
	
	return collision;
}