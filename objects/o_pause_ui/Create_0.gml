//right when the escape is pressed it saves the inventory
saving_inventory();
cursor_sprite = s_pointer;
menuSelected = 0;
menuSelectedPrev = 0;
buffer_highlight = 15;

instance_activate_object(o_input);
/// @description Insert description here
enum options_paused {
	continue_game,
	save_game,
	//settings,
	//credits,
	main_menu
}

menu_color_ = make_color_rgb(247, 243,143); //185, 248, 216
menu_dark_color_ = make_color_rgb(126, 127, 81); //58, 173, 133

option_[options_paused.continue_game] = "Continue";
option_[options_paused.save_game] = "Save Game";
//option_[options_paused.settings] = "Settings";
//option_[options.credits] = "Credits"; go to step event for info
option_[options_paused.main_menu] = "Main Menu";

option_length_ = array_length_1d(option_);

index_ = options_paused.continue_game;