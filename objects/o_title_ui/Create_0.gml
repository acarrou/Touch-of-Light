/// @description Insert description here
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
cursor_sprite = s_pointer;

menuSelected = 0;
menuSelectedPrev = 0;
buffer_highlight = 15;

enum options {
	continue_game,
	new_game,
	settings,
	//credits,
	quit_game
}

enum new_game_wipe{
	yes,
	no
}

menu_color_ = make_color_rgb(247, 243,143); //185, 248, 216
menu_dark_color_ = make_color_rgb(126, 127, 81); //58, 173, 133

option_[options.continue_game] = "Load Game";
option_[options.new_game] = "New Game";
option_[options.settings] = "Settings";
//option_[options.credits] = "Credits"; go to step event for info
option_[options.quit_game] = "Quit Game";

new_game_op[new_game_wipe.yes] = "Yes";
new_game_op[new_game_wipe.no] = "No";

option_length_ = array_length_1d(option_);
option_new = array_length_1d(new_game_op);
index_1 = new_game_wipe.no;

index_ = options.continue_game;