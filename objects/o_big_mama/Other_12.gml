/// @description Attack state
if not instance_exists(o_player) {
	state_ = bigmama.move;
	exit;
}

apply_friction_to_movement_entity();
move_movement_entity(true);

if speed_ == 0 {
	alarm[2] = global.one_second * random_range(2, 4);
	
	if (!instance_exists(o_hornet)){
		alarm[2] = global.one_second/2 * random_range(2, 4);
	}
	
	var _direction = point_direction(x, y, o_player.x, o_player.y) + random_range(-30, 30);
	var _stinger = instance_create_layer(x, y, "Instances", o_big_mama_stinger);
	_stinger.direction = _direction
	_stinger.image_angle = _direction;
	_stinger.speed = 2;
	state_ = bigmama.move;
	audio_play_sound(a_stinger, 1, false);
}