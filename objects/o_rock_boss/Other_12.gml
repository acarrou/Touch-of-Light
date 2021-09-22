/// @description Attack state

//charge goes here


if not instance_exists(o_player) {
	state_ = rock.move;
	exit;
}

if distance_to_object(o_player) > range_ {
	state_ = rock.move;
}

var _direction = point_direction(x, y, o_player.x, o_player.y);
var _x_speed = lengthdir_x(speed_, _direction);
if _x_speed != 0 {
	image_xscale = sign(_x_speed);
}

add_movement_maxspeed(_direction, 0.123, 1.0);
move_movement_entity(true);

var _player = instance_place(x, y, o_player);
if _player {
	
	sprite_index = s_stone_boss_charge1;
	create_hitbox(sprite_index, x, y, 0, 1, [o_player], damage_, 7);
}

if animation_hit_frame(image_number - 1) {
	state_ = rock.attack;
	sprite_index = s_stone_boss_walk;
	alarm[1] = 2*global.one_second
}