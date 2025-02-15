function attackSlash(){
	if (sprite_index != spriteAttack)
	{	
		// Set up animation
		sprite_index = spriteAttack;
		localFrame = 0;
		image_index = 0;
		
		// Clear hit list
		if (!ds_exists(hitByAttack, ds_type_list)) hitByAttack = ds_list_create();
		ds_list_clear(hitByAttack);
		
	}
	
	calcAttack(playerAttack1HB);
	
	// Update Sprite
	playerAnimateSprite();
	
	if (animationEnd){
		state = playerStateFree;
		animationEnd = false;
	}
}
	
function attackSpin(){
	
}

function calcAttack(maskInd){
	// use HB and check for hit
	
	mask_index = maskInd;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, oParentEntity, hitByAttackNow, false);
	
	// Found
	if (hits > 0) 
	{
		
		for (var i = 0; i < hits; i++){
			// if instance hasn't been hit yet, then hit
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1)
			{
				ds_list_add(hitByAttack, hitID);
				with (hitID) {
					if (object_is_ancestor(object_index, oParentEnemy)) && (id.object_index != oCat) && (id.object_index != oCatOthers){
						
						// Player cannot hit Boss before his monologue
						if (id.object_index == oCalamity){
							if (!oPlayer.bossMonologue) hurtEnemy(id, 5, other.id, 20);	
							
						}
						else hurtEnemy(id, 5, other.id, 20);	
					}
					else if (entityHitScript != -1) script_execute(entityHitScript);
				}
			}
		}
		
	}
	
	ds_list_destroy(hitByAttackNow);
	mask_index = playerIdle;
}

function hurtEnemy(enemy, damage, source, knockback){
	if (enemy.object_index == oStag || enemy.object_index == oCalamity) knockback = 0.01;
	with(enemy)
	{
		if (state != ENEMY_STATE.DIE)
		{
			enemyHP -= damage;
			flash = 1;
			
			if (enemyHP <= 0){
				state = ENEMY_STATE.DIE;
			}
			else 
			{
				if (state != ENEMY_STATE.HURT) statePrevious = state;
				state = ENEMY_STATE.HURT;
			}
			
			image_index = 0;
			if (knockback != 0){
				var knockDirection = point_direction(x, y, source.x, source.y);
				xTo = x - lengthdir_x(knockback, knockDirection);
				yTo = y - lengthdir_y(knockback, knockDirection);

			}
		}
	}
}