/// @description Attack state
if not instance_exists(o_player) {
	state_ = icy.move;
	exit;
}

apply_friction_to_movement_entity();
move_movement_entity(true);

if speed_ == 0 {
	alarm[2] = global.one_second/2 * random_range(1, 2);
	sprite_index = s_ice_phantom_shoot;
	
	var _direction = point_direction(x, y, o_player.x, o_player.y) + random_range(-1, 1);
	var _ice = instance_create_layer(x, y, "Instances", o_ice);
	_ice.direction = _direction
	_ice.image_angle = _direction;
	_ice.speed = 2;
	state_ = icy.move;
	audio_play_sound(a_ice_spell, 1, false);
}
