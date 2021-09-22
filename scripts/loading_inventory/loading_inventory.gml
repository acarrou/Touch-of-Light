function loading_inventory() {
	/*
	if(!inventory_is_open && global.inv_load) {
		if(file_exists("player_inventory.json")) {
		
			//destroy all current inventories, we are replacing them with the saved data
			event_user(INV_CONTROLLER_EVENTS.destroy_inventories);
		
			//read the file
			var _file = file_text_open_read("player_inventory.json");
			global.inv_mouse = ex_inv_read(file_text_read_string(_file));
			file_text_readln(_file);
			global.inv_backpack = ex_inv_read(file_text_read_string(_file));
			file_text_readln(_file);
			global.inv_toolbar = ex_inv_read(file_text_read_string(_file));
			file_text_readln(_file);
			global.inv_equipment = ex_inv_read(file_text_read_string(_file));
			file_text_readln(_file);
			global.inv_craft = ex_inv_read(file_text_read_string(_file));
		
		
			//open the inventory panels again
			event_user(INV_CONTROLLER_EVENTS.open_static_inventories);
			if(inventory_is_open) {
				inventory_is_open = false;
				//event_user(INV_CONTROLLER_EVENTS.open_toggable_inventories);
			}
			global.inv_load = false;
			//show_message_async("Inventories loaded");
		
		}
	}

/* end loading_inventory */
}
