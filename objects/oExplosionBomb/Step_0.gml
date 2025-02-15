if (!global.gamePaused)
{
	
	image_speed = 1.0
	//HIT THINGS
	if (image_index < 4)
	{
		var entityList = ds_list_create();
		var entityCount = instance_place_list(x,y,oParentEntity, entityList, false);
		var entity = noone;
		while (entityCount > 0)
		{
			entity = entityList[| 0];
			if (ds_list_find_index(collisionHistory, entity) == -1)
			{
				with (entity)
				{
					if (object_is_ancestor(object_index, oParentEnemy)) && (id.object_index != oCat) && (id.object_index != oCatOthers) && (id.object_index != oCalamity)
					{
						hurtEnemy(id,15,other.id,20);
					}
					else
					{
						if (entityHitScript != -1) script_execute(entityHitScript);
					}
				}
				ds_list_add(collisionHistory, entity);
			}
			ds_list_delete( entityList,0);
			 entityCount--;
		}
		ds_list_destroy(entityList);
	}
}
else
{
	image_speed = 0.0;
}