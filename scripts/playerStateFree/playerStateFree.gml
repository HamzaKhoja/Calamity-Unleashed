function playerStateFree(){
	
	// Movement
	xspeed = lengthdir_x(input_magnitude * walkSpeed, input_direction);
	yspeed = lengthdir_y(input_magnitude * walkSpeed, input_direction);
	
	playerCollision();
	
	// Update Sprite Index
	var oldSprite = sprite_index;
	if (input_magnitude != 0) {
		direction = input_direction;
		sprite_index = spriteWalk;
	}

	else {
		sprite_index = spriteIdle;
	}

	if (oldSprite != sprite_index) localFrame = 0;

	// Update Image Index
	playerAnimateSprite();
	
	// Attack Key Logic
	if (key_attack) {
		audio_play_sound(sePlayerSword, 1, 0);
		state = playerStateAttack;
		stateAttack = attackSlash;
	}
	
	// Deactivate Key Logic
	if (key_activate) {
		
		// Check for entity to activate
		var activateX = x + lengthdir_x(10, direction);
		var activateY = y + lengthdir_y(10, direction);
		
		var activateSize = 10;
		var activateList = ds_list_create();
		activate = noone;
		var entitiesFound = collision_rectangle_list(
			activateX - activateSize, 
			activateY - activateSize, 
			activateX + activateSize, 
			activateY + activateSize,
			oParentEntity,
			false,
			true,
			activateList,
			true
		);
		
		// If first entity found is lifted entity or has no script, try next one
		while (entitiesFound > 0)
		{
			var check = activateList[| --entitiesFound];
			if (check != global.iLifted) && (check.entityActivateScript != -1){
				activate = check;
				break;
				
			}
		}
		
		ds_list_destroy(activateList);		
		
		// Dash if not near entity to activate
		if (activate == noone) {
			
			// Throw held object
			if (global.iLifted != noone) playerThrowObject();	
			// No held object, dash
			else {
				audio_play_sound(seDash, 1, 0);
				state = playerStateDash;
				moveDistanceRemaining = dashDistance;
			}
		}
		
		else {
			// Activate Entity
			scriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
			
			// If NPC, make them face Player
			if (activate.entityNPC){
				with (activate){
					direction = point_direction(x, y, other.x, other.y);
					image_index = CARDINAL_DIR;
				}
			}
		}		
	}
	
	if (key_item && !key_activate) && (global.playerHasAnyItems) && (global.playerEquipped != ITEM.SWORD)
	{
		switch(global.playerEquipped)
		{
			case(ITEM.BOMB): useItemBomb(); break;
			
			case(ITEM.BOW1): useItemArrow1(); break;
			
			case(ITEM.BOW2): useItemArrow2() break;
			
			case(ITEM.HOOKSHOT): useItemHook(); break;
			
			case (ITEM.DYNAMITE): useItemDynamite(); break;
			
			default: break;

		}
	}
	
	// Cycle Items
	if (global.playerHasAnyItems)
	{
		var cycleDirection = key_item_select_up	- key_item_select_down;
		if (cycleDirection != 0)
		{
			do {
				global.playerEquipped += cycleDirection;
				if (global.playerEquipped < 0) global.playerEquipped = ITEM.TYPE_COUNT - 1;
				if (global.playerEquipped  >= ITEM.TYPE_COUNT) global.playerEquipped = 0;
				
			} until (global.playerItemUnlocked[global.playerEquipped]);
		}
	}
}