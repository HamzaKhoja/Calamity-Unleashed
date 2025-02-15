function saveGame(){
	// Create save map
	var map = ds_map_create();
	
	map[? "Room"] = room;
	map[? "PlayerHealth"] = global.playerHealth;
	map[? "RuinSword"] = global.ruinSword;
	map[? "Key1"] = global.hasKey1;
	map[? "Key2"] = global.hasKey2;
	map[? "Key3"] = global.hasKey3;
	map [? "Boulder"] = global.BoulderDestroyed;
	map[? "MaxHealth"] = global.playerHealthMax;
	map[? "Gems"] = global.playerGreenGems;
	map[? "Orbs"] = global.playerSoulOrbs;
	map[? "Items"] = global.playerItemUnlocked;
	map[? "Ammo"] = global.playerAmmo;
	map[? "Equipped"] = global.playerEquipped;
	map[? "TargetX"] = global.targetX;
	map[? "TargetY"] = global.targetY;
	
	var questMap = ds_map_create();
	ds_map_copy(questMap, global.questStatus);
	ds_map_add_map(map, "Quests", questMap);
	
	// Save to string
	var str = json_encode(map);
	saveToFile("save" + string(global.gameSaveSlot) + ".sav", str);
	show_debug_message(str);
	
	// Destroy data
	ds_map_destroy(map);
	show_debug_message("Game Saved");
}

function saveToFile(filename, str){
	var buffer = buffer_create(string_byte_length(str) + 1, buffer_fixed, 1);
	buffer_write(buffer, buffer_string, str);
	buffer_save(buffer, filename);
	buffer_delete(buffer);
}