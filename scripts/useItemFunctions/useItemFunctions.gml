function useItemBomb()
{
	if (global.playerAmmo[ITEM.BOMB] > 0) && (global.iLifted == noone)
	{
		global.playerAmmo[ITEM.BOMB]--;
		var bomb = instance_create_layer(x, y, "Instances", oBomb);
		activateLiftable(bomb);
	}
}
function useItemDynamite()
{
	if (global.playerAmmo[ITEM.DYNAMITE] > 0) && (global.iLifted == noone)
	{
		global.playerAmmo[ITEM.DYNAMITE]--;
		var dynamite = instance_create_layer(x, y, "Instances", oDynamite);
		activateLiftable(dynamite);
	}
}

function useItemArrow1()
{
	if (global.playerAmmo[ITEM.BOW1] > 0) && (global.iLifted == noone)
	{
		global.playerAmmo[ITEM.BOW1]--;
		audio_play_sound(seBow, 1, 0);
		playerActAnimation(playerBow, playerFireArrow1);
	}
}

function useItemArrow2()
{
	if (global.playerAmmo[ITEM.BOW2] > 0) && (global.iLifted == noone)
	{
		global.playerAmmo[ITEM.BOW2]--;
		audio_play_sound(seBow, 1, 0);
		playerActAnimation(playerBow, playerFireArrow2);
	}
}

function playerFireArrow1()
{
	with(instance_create_depth(floor(x), floor(y) -7, depth, oArrow1))
	{
		direction = other.direction;
		direction = CARDINAL_DIR * 90;
		image_speed = 0;
		image_index = CARDINAL_DIR;
		speed = 6;
	}
}
function playerFireArrow2()
{
	with(instance_create_depth(floor(x), floor(y) -7, depth, oArrow2))
	{
		direction = other.direction;
		direction = CARDINAL_DIR * 90;
		image_speed = 0;
		image_index = CARDINAL_DIR;
		speed = 18;
	}
}

function useItemHook()
{
	audio_play_sound(seHookshotFire, 1, 0);
	state = playerStateHook ;
	
	localFrame = 0;
	
}