function loading_game() {
			var map = global.loadMap;

				
			if (room==map[? "room"]){
			
				o_player.x = map[? "x"];
				o_player.y = map[? "y"];
				global.hp = map[? "hp"];
				global.stamina = map[? "stamina"];
				global.player_max_health = map[? "max_hp"];
				global.player_max_stamina = map[? "max_stamina"];
				o_bomb_item.amount_ = map[? "bombs"];
				o_fireball.amount_ = map[? "fireball"];
				global.player_gems = map[? "gems"];
				global.destroyed = map[? "destroyed"];
			
				//loading dialogue
				if(global.NPC1_interact == true){
				global.NPC1 = map[? "choice_variable"];
				}
		//Inventory
		//ds_list_read(global.inv, map[? "inv"]);

					ds_map_destroy(map);
				
			}


}
