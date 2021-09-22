function saving_game() {
	if (global.hp <= 0) exit;

	instance_activate_all();
	var map = ds_map_create();
			
				instance_activate_object(o_player);
				instance_activate_object(first_NPC);
				instance_deactivate_object(o_input);
				//Save player info
				map[? "x"] = o_player.x;
				map[? "y"] = o_player.y;
				map[? "hp"] = global.hp;
				map[? "stamina"] = global.stamina;
				map[? "max_hp"] = global.player_max_health;
				map[? "max_stamina"] = global.player_max_stamina;
				map[? "bombs"] = o_bomb_item.amount_;
				map[? "fireball"] = o_fireball.amount_;
				map[? "gems"] = global.player_gems;
				map[? "destroyed"] = global.destroyed;
			
				//saving dialogue
	
				//if the character has interacted with the NPC
				if(global.NPC1_interact == true){
				map[? "choice_variable"] = global.NPC1;
				}
			
			
				//Save inventory
				//map[? "inv"] = ds_list_write(global.inventory);
				//map[? "item"] = ds_list_write(global.item);
			
				//Save world info
				map[? "room"] = room;
				map[? "time"] = global.time;
			
				//Save map and delete it
				ds_map_secure_save(map, global.file_name);
				ds_map_destroy(map);
			
				//Deactivate player
				//instance_deactivate_object(o_player);
			
				option_[options_paused.save_game] = "Game Saved.";
				alarm[0] = 60;
				instance_deactivate_all(1);
				instance_deactivate_object(o_player);
				instance_deactivate_object(first_NPC);
				instance_activate_object(o_input);
				instance_activate_object(o_game);
				instance_activate_object(o_inventory_item);
				instance_activate_object(o_pause_back);


}
