menuSelectedPrev = menuSelected;

//Menu option change
var menuMove = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menuSelected += menuMove;

if (index_ >= option_length_) index_ = 0;
if (index_ < 0) index_ = option_length_ - 1;

//Mouse input
menuX = x-40;
menuY = y;

var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

var mouseOption = (mouseY - menuY) div buffer_highlight;

if (mouseOption >= 0 && mouseOption < option_length_){
	 index_ = mouseOption;
}



ds_map_secure_load(global.file_name);

/*
//for other menu movement
var _last_index = index_
if global.up_pressed_ {
	index_ = max(--index_, 0);
}

if global.down_pressed_ {
	index_ = min(++index_, option_length_-1);
}

if _last_index != index_ {
	audio_play_sound(a_menu_move, 1, false);
}
*/

if global.action_one_pressed_ or global.action_space_pressed_ {
	switch (index_) {
		
			case options.continue_game:
			
			if (file_exists(global.file_name)){
				//Load map
				global.loadMap = ds_map_secure_load(global.file_name);
		
				//Change room
				var loadRoom = global.loadMap[? "room"];
				room_goto(loadRoom);
				
				//Add oManager
			}else{
				option_[options.continue_game] = "No save found";
				alarm[0] = 60;
				audio_play_sound(a_menu_select, 3, false);
			}
		break;
			
		case options.new_game:
			audio_play_sound(a_menu_select, 3, false);
			instance_destroy(all);
			file_delete(global.file_name);
			room_goto(global.game_start);
			instance_create_layer(0, 0, "Instances", o_game);
			
			break;
			
			case options.settings:
			audio_play_sound(a_menu_select, 3, false);
			room_goto(r_how_to_play_title);
			break;
		
		// Work on credits
		//case options.credits:
			//audio_play_sound(a_menu_select, 3, false);
			//room_goto = r_credits // still have to make the room and make it so that you can exit the room back to menu
			//break;
			
		case options.quit_game:
			audio_play_sound(a_menu_select, 3, false);
			game_end();
			break;
	}
}