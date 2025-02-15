function playerStateHook(){
	xspeed = 0;
	yspeed = 0;
	
	// If just got into Hook State
	if (sprite_index != playerHookThrown)
	{
		show_debug_message("yo");
		hook = 0;
		hookX = 0;
		hookY = 0;
		hookStatus = HOOKSTATUS.EXTENDING;
		hookedEntity = noone;
		
		// Update Sprite
		sprite_index = playerHookThrown;
		image_index = CARDINAL_DIR;
		image_speed = 0;
	}
	
	
    //Extend/Restract hook:
	var speedHookTemp = speedHook;
	if (hookStatus != HOOKSTATUS.EXTENDING) speedHookTemp *= -1;
	hook += speedHookTemp;
	switch (image_index)
	{
		case 0: hookX = hook; break;
		case 1: hookY = -hook; break;
		case 2: hookX = -hook; break;
		case 3: hookY = hook; break;
	}
	
	// Hookshot State Machine
	switch (hookStatus)
	{
		case HOOKSTATUS.EXTENDING:
		{
			if (hook >= distanceHook) hookStatus = HOOKSTATUS.MISSED;
			
			// Check for a hit
			var hookHit = collision_circle(x + hookX, y + hookY, 4, oParentEntity, false, true);
			if (hookHit != noone) && (global.iLifted != hookHit) 
			{
				// Depending on what is hit
				switch (hookHit.entityHookable)
				{
					default: // Not Hookable
					{
						if (object_is_ancestor(hookHit.object_index,oParentEnemy)) && (hookHit.object_index != oCat) && (hookHit.object_index != oCatOthers)
						{
							hurtEnemy(hookHit,1,id,5);
							hookStatus = HOOKSTATUS.MISSED;						
						}
						
						else
						{
							if (hookHit.entityHitScript != -1)
							{
								with (hookHit) script_execute(entityHitScript)
								hookStatus = HOOKSTATUS.MISSED
							}
						}
						
					}break;
					
					case 1:
					{
						hookStatus = HOOKSTATUS.PULLTOPLAYER
						hookedEntity = hookHit;
						audio_play_sound(seHooked, 1, 0);
					} break;
					
					case 2:
					{
						hookStatus = HOOKSTATUS.PULLTOENTITY;
						hookedEntity = hookHit;
						audio_play_sound(seHooked, 1, 0);
					} break;
				}
			}
		} break;
		
		// Pull Entity to Player
		case HOOKSTATUS.PULLTOPLAYER:
		{
			with (hookedEntity)
			{
				x = other.x + other.hookX;
				y = other.y + other.hookY;
			}
		} break;
		
		case HOOKSTATUS.PULLTOENTITY:
		{
			switch (image_index)
			{
				case 0: x += speedHook; break;
				case 1: y -= speedHook; break;
				case 2: x -= speedHook; break;
				case 3: y += speedHook; break;
				
			}
		} break;
	}
	
	// Finish Retract and End State
	if (hook <= 0)
	{
		hookedEntity = noone;
		state = playerStateFree;
	}
}