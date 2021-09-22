/// @description Get input
if(instance_exists(obj_textbox)) exit;


right_ = keyboard_check(ord("D"));
left_ = keyboard_check(ord("A"));
up_ = keyboard_check(ord("W"));
down_ = keyboard_check(ord("S"));


global.right_pressed_ = keyboard_check_pressed(ord("D"));
global.left_pressed_ = keyboard_check_pressed(ord("A"));
global.up_pressed_ = keyboard_check_pressed(ord("W"));
global.down_pressed_ = keyboard_check_pressed(ord("S"));


global.action_one_pressed_ = mouse_check_button_pressed(mb_left);
global.action_two_pressed_ = mouse_check_button_pressed(mb_right);
global.action_space_pressed_ = keyboard_check_pressed(vk_space);


global.action_one_ = mouse_check_button(mb_left);
global.action_two_ = mouse_check_button(mb_right);

global.action_roll_ = keyboard_check_pressed(vk_space);

//settings_back = keyboard_check(vk_escape);
	

moveX = 0; 
moveY = 0;



if room == r_carrout {
	exit;
}
if room == r_title {
	exit;
}

if room == r_game_over {
	exit;
}

if room == r_how_to_play_title {
	exit;
}

if room == r_how_to_play_pause {
	exit;
}

global.pause_pressed_ = keyboard_check_pressed(vk_tab);