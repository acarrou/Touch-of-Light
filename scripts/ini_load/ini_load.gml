function ini_load() {
	// Using a different save system, keeping it just in case
	/*
	///@arg = file_name
	var _file_name = argument0;
	if !file_exists(_file_name) exit;

	global.load = true;
	ini_open(_file_name);

	var _room_name = ini_read_string("Level", "Room", "");
	//global.player_health = ini_read_real("Player", "Health", 1);
	global.hp = ini_read_real("Player", "HP", 1);
	global.player_max_health = ini_read_real("Player", "Max Health", 1);
	global.player_gems = ini_read_real("Player", "Gems", 1);
	o_bomb_item.amount_ = ini_read_real("Player", "o_bomb_item", 1);
	o_fireball.amount_ = ini_read_real("Player", "o_fireball", 1);
	//global.player_stamina = ini_read_real("Player", "Stamina", 1);
	global.player_max_stamina = ini_read_real("Player", "Max Stamina", 1);
	global.inventory = ini_read_inventory("Player", "Inventory", []);
	global.item = ini_read_inventory("Player", "Active Items", []);
	global.destroyed = ini_read_string_array("World", "Destroyed Objects", []);
	//obj_examplechar.choice_variable = ini_read_string_array("NPC", "choice_variable", []); NEEDS DATA STRUCTURE MAPED

	//Dialogue choice load
	global.answer = ini_read_string("obj_examplechar", "choice_variable", -1);



	ini_close();

	if _room_name == "" {
		show_error("No save data", false);	
	}

	var _room = asset_get_index(_room_name);
	room_goto(_room);


/* end ini_load */
}
