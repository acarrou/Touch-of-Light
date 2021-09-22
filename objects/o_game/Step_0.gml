if (instance_exists(obj_textbox) ||instance_exists(o_restart_button))
exit;

//When the Inventory is Open do not run the code to pause the game
with(Inventory){
if(Inventory.show_inventory)
exit;
}

window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()))
if room != r_title
if (keyboard_check_pressed(vk_escape)){
		draw_set_color(c_white);
	sprite_delete(paused_sprite_);
	paused_ = false;
	audio_play_sound(a_menu_select, 3, false);
	//Toggle
	global.pause1 = !global.pause1;

	
	//Pause
	if (global.pause1){
		//Deactivate
		instance_deactivate_all(true);
		
		//Pause menu

		instance_create_layer(280, 160, "Instances", o_pause_ui);
		instance_create_layer(0, 0, "Instances", o_pause_back);
		
	}
	else{
		//Activate
		instance_activate_all();
		paused_ = false;
		//Pause menu
		instance_destroy(o_pause_ui);
		instance_destroy(o_pause_back);
	}
}

if (global.pause1) exit;

//Time
global.time += 0.1;
global.time = global.time mod 24;

if paused_ {
	instance_deactivate_object(o_enemy);
	instance_deactivate_object(o_boss);
	cursor_sprite = -1;
	var _array_size = array_length_1d(global.inventory);
	if global.right_pressed_ {
		item_index_ = min(item_index_ +1, _array_size-1);
		audio_play_sound(a_menu_move, 1, false);
	}
	if global.left_pressed_ {
		item_index_ = max(item_index_ -1, 0);
		audio_play_sound(a_menu_move, 1, false);
	}
	
	if global.action_one_pressed_ {
		global.item[0] = global.inventory[item_index_];
		audio_play_sound(a_menu_select, 3, false);
	}
	if global.action_two_pressed_ {
		global.item[1] = global.inventory[item_index_];
		audio_play_sound(a_menu_select, 3, false);
	}
}

//if (global.pause1) exit;
if global.pause_pressed_ {
	draw_set_color(c_white);
	cursor_sprite = s_crosshair
	if paused_ {
		paused_ = false;
		if sprite_exists(paused_sprite_) {
			sprite_delete(paused_sprite_);
		}
		instance_activate_all();
		audio_play_sound(a_unpause, 5, false);
	} else {
		paused_ = true;
		paused_sprite_ = sprite_create_from_surface(application_surface, o_player.x+150, o_player.y, view_wport[0], view_hport[0], false,false, 0, 0);
		instance_deactivate_all(true);
		var _array_size = array_length_1d(global.inventory);
		for (var _i=0; _i<_array_size; _i++) {
			instance_activate_object(global.inventory[_i]);
		}
		instance_activate_object(o_input);
		audio_play_sound(a_pause, 5, false);
	}
}