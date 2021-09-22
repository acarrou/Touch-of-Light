window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()))
depth = -y;
event_user(state_);

if(global.hp == 0){
	invincible_ = false;
}

clamp(point_distance(mouse_x, mouse_y, o_player.x, o_player.y), 0, 40);

//Door
var door = instance_place(x, y, o_door);
if (door && door.touched){
	y--;
	
	state = starting_state_;
}

//making sure speed is the same;
if (moveSpeed > 2){
	moveSpeed = 2;
}

not_enough_stamina();


sprite_index = sprite_[state_, direction_facing_];

if global.hp <= 0 {
	cursor_sprite = -1;
	global.last_room = room;
	audio_stop_all();
	audio_play_sound(a_hit, 11, false);
	instance_create_layer(x, y, "Instances", o_player_death);
	audio_play_sound(a_player_death, 10, false);
	instance_destroy();
}


//Rolling
if (global.busy_action || global.currently_rolling)exit;
if(!global.stamina <= 0 && global.action_roll_){
		global.currently_rolling = true;
	o_player.state_ = player.evade;
	/*
	var moveX = 1 * moveSpeed;
	var moveY = 1 * moveSpeed;
	
		player_collider();
x += moveX*100
y += moveY*100;
	*/
	global.stamina = max(0, global.stamina- 25);
		alarm[1] = global.one_second;
		image_index = 0;

}