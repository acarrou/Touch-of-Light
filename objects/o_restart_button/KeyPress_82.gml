window_set_cursor(cr_none);
if keyboard_check_pressed(ord("R")){
if (file_exists(global.file_name)){
				//Load map
				global.loadMap = ds_map_secure_load(global.file_name);
		
				//Change room
				var loadRoom = global.loadMap[? "room"];
				room_goto(loadRoom);
				
				//Add oManager
			
			
		}else{
			room_goto(global.last_room);
			global.hp = global.player_max_health;
		}
					audio_stop_sound(a_game_over);
}