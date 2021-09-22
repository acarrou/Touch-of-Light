///@desc	handle user input


/*
	TOGGLE INVENTORIES
*/
//If we want to close the Inventory using escape instead of I
if(inventory_is_open && keyboard_check_pressed(vk_escape)) { 
		event_user(INV_CONTROLLER_EVENTS.close_toggable_inventories);
		cursor_sprite = s_crosshair;
	}


if(keyboard_check_pressed(ord("I"))) {	
	if(inventory_is_open) { 
		event_user(INV_CONTROLLER_EVENTS.close_toggable_inventories);
		cursor_sprite = s_crosshair;
	}
	else {
		event_user(INV_CONTROLLER_EVENTS.open_toggable_inventories);
		cursor_sprite = s_pointer;
	}
}

/*
	SAVE INVENTORIES
	
	Save all the player inventories to a single file in the sandbox.
*/
/*
if(inventory_is_open && global.inv_save) {
	var _file = file_text_open_write("player_inventory.json");
	file_text_write_string(_file, ex_inv_write(global.inv_mouse)); //inv_mouse
	file_text_writeln(_file);
	file_text_write_string(_file, ex_inv_write(global.inv_backpack)); //inv_player
	file_text_writeln(_file);
	file_text_write_string(_file, ex_inv_write(global.inv_toolbar)); //inv_toolbar
	file_text_writeln(_file);
	file_text_write_string(_file, ex_inv_write(global.inv_equipment)); //inv_equipment
	file_text_writeln(_file);
	file_text_write_string(_file, ex_inv_write(global.inv_craft)); //inv_craft
	file_text_close(_file);
	//show_message_async("Inventories saved");
	global.inv_save = false;
}
*/
/*
	LOAD INVENTORIES
	
	Load the player inventories from file
*/

loading_inventory();

