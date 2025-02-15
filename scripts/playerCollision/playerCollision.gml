function playerCollision(){
	var collision = false;
	var entityList = ds_list_create();
	
	// Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + xspeed, y)) {
		x -= x mod TILE_SIZE;
		if (sign(xspeed) == 1) x += TILE_SIZE - 1;	
		xspeed = 0;
		collision = true;
	}
	
	// Horizontal Entities
	
	
	var entityCount = instance_position_list(x + xspeed, y, oParentEntity, entityList, false);
	var snapX;
	while (entityCount > 0){
		var entityCheck = entityList[| 0];
		if (entityCheck.entityCollision){
			// Move as close as possible
			if (sign(xspeed) == -1) snapX = entityCheck.bbox_right + 1;
			else snapX = entityCheck.bbox_left - 1;
			x = snapX;
			xspeed = 0;
			collision = true;
			entityCount = 0;
		}
		ds_list_delete(entityList, 0);
		entityCount--;
	}
	
	
	
	
	// Horizontal Move Commit
	x += xspeed;
	
	
	
	ds_list_clear(entityList);
	
	
	// Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + yspeed)) {
		y -= y mod TILE_SIZE;
		if (sign(yspeed) == 1) y += TILE_SIZE - 1;	
		yspeed = 0;
		collision = true;
	}
	
	// Vertical Entities
	var entityCount = instance_position_list(x, y + yspeed, oParentEntity, entityList, false);
	var snapY;
	while (entityCount > 0){
		var entityCheck = entityList[| 0];
		if (entityCheck.entityCollision){
			// Move as close as possible
			if (sign(yspeed) == -1) snapY = entityCheck.bbox_bottom + 1;
			else snapY = entityCheck.bbox_top - 1;
			y = snapY;
			yspeed = 0;
			collision = true;
			entityCount = 0;
		}
		ds_list_delete(entityList, 0);
		entityCount--;
	}
	
	// Vertical Move Commit
	y += yspeed;
	
	
	ds_list_destroy(entityList);
	
	
	return collision;
}