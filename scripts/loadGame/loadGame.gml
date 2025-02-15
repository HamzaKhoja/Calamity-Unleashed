function loadFromFile(filename){
	
	var buffer = buffer_load(filename)
	var str = buffer_read(buffer, buffer_string);
	buffer_delete(buffer);
	var json = json_decode(str);
	return json;
}

function loadGame(slot){
	global.gameSaveSlot = slot;
	var file = "save" + string(global.gameSaveSlot) + ".sav";
	if (file_exists(file))
	{
		// Load game data
		var map = loadFromFile(file);
		
		// Variables
		
		global.playerHealth = map[? "PlayerHealth"];
		global.ruinSword = map[? "RuinSword"];
		global.hasKey1 = map[? "Key1"];
		global.hasKey2 = map[? "Key2"];
		global.hasKey3 = map[? "Key3"];
		global.BoulderDestroyed = map [? "Boulder"];
		global.playerHealthMax = map[? "MaxHealth"];
		global.playerGreenGems = map[? "Gems"];
		global.playerSoulOrbs = map[? "Orbs"];
	
		global.playerEquipped = map[? "Equipped"];
		global.targetX = map[? "TargetX"];
		global.targetY = map[? "TargetY"];
		
		// Lists to arrays
		for (var i = 0; i < ITEM.TYPE_COUNT; i++)
		{
			global.playerItemUnlocked[i] =  map[? "Items"][| i];
			global.playerAmmo[i] = map[? "Ammo"][| i];
		}
		
		// Quest data
		ds_map_copy(global.questStatus, map[? "Quests"]);
		
		// Room
		roomTransition(TRANS_TYPE.SLIDE, map[? "Room"]);
		ds_map_destroy(map);
		
		return true;
	}
	else{ show_debug_message("slot doesn't contain a save"); return false;}
}