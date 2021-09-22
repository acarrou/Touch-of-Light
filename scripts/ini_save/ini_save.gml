function ini_save() {
	// Using a different save system, keeping it just in case
	/*
	///@arg file_name
	var _file_name = argument0;
	if file_exists(_file_name) file_delete(_file_name);
	ini_open(_file_name);

	ini_write_string("Level", "Room", room_get_name(room));
	//ini_write_real("Player", "Health", global.player_health);
	ini_write_real("Player", "HP", global.hp);
	ini_write_real("Player", "Max Health", global.player_max_health);
	//ini_write_real("Player", "Stamina", global.player_stamina);
	ini_write_real("Player", "Max Stamina", global.player_max_stamina);
	ini_write_real("Player", "Gems", global.player_gems);
	ini_write_real("Player", "o_bomb_item", o_bomb_item.amount_);
	ini_write_real("Player", "o_fireball", o_fireball.amount_);
	ini_write_inventory("Player", "Inventory", global.inventory);
	ini_write_inventory("Player", "Active Items", global.item);
	ini_write_string_array("World", "Destroyed Objects", global.destroyed);
	//ini_write_string_array("NPC", "choice_variable", obj_examplechar.choice_variable); NEEDS DATA STRUCTURE MAPED

	////Dialogue choice saved
	//ini_write_string_array("obj_examplechar", "choice_variable", global.answer);
	ini_write_string("obj_examplechar", "choice_variable", global.answer);


	ini_close();

/* end ini_save */
}
