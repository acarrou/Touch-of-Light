/// @description Move State

window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()))
if( global.action_roll_)exit;
global.busy_action = false;
// Get movement input
image_speed = 0;
var _x_input = o_input.right_ - o_input.left_;
var _y_input = o_input.down_ - o_input.up_;
var _input_direction = point_direction (0, 0, _x_input, _y_input);

moveX = _x_input * moveSpeed;
moveY = _y_input * moveSpeed;

if _x_input == 0 and _y_input == 0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {
	image_speed = 0.65;

	get_direction_facing(_input_direction);

//colliding with o_solid object
player_collider();

//Moving Player
x += moveX;
y += moveY;


if (_x_input != 0) and (_y_input != 0) {
moveSpeed = dag_speed;
} else {
moveSpeed = 1.5;
}

add_movement_maxspeed(round(_input_direction), 0, 0);
	roll_direction_ = direction_facing_*90;
}

inventory_use_item(global.action_one_pressed_, global.item[0], action.one);
inventory_use_item(global.action_two_pressed_, global.item[1], action.two);

move_movement_entity(false);
