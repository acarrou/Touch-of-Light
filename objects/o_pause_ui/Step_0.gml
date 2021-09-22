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



/*
//for other menu movement
var _last_index = index_
if keyboard_check_pressed(ord("W")) {
	index_ = max(--index_, 0);
}

if keyboard_check_pressed(ord("S")) {
	index_ = min(++index_, option_length_-1);
}


if _last_index != index_ {
	audio_play_sound(a_menu_move, 1, false);
}
*/

if  global.action_one_pressed_ or global.action_space_pressed_ {
	
	switch (index_) {
		
		case options_paused.continue_game:
			audio_play_sound(a_menu_select, 3, false);
			global.pause1 = false;
			instance_destroy(o_pause_ui);
			instance_destroy(o_pause_back);
			
			instance_activate_all();

			break;
			
			
			case options_paused.save_game:
			audio_play_sound(a_menu_select, 3, false);
			//Create map
			saving_game();
			global.inv_save = true;
			break;
			
			
		case options_paused.main_menu:
		
		//show_message(ds_map_size(global.save_data));
			audio_play_sound(a_menu_select, 3, false);
			global.pause1 = false;
			instance_destroy(o_pause_ui);
			instance_destroy(o_pause_back);
			instance_activate_all();
			room_goto(r_title);
			break;
	}
}