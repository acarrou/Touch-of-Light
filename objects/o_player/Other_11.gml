/// @description Sword State
if( global.action_roll_)exit;
player_collider();

//Moving Player
x += moveX;
y += moveY;

move_movement_entity(false);
mouse_direction();
image_speed = 1.7;
if animation_hit_frame(1) {
	var _angle = direction_facing_*90;
	var _life = 3;
	var _damage = 50;
	var _knockback = 8;
	var _hitbox = create_hitbox(s_sword_hitbox, x, y, direction, _life, [o_enemy, o_grass, o_plant, o_bush,o_boss], _damage, _knockback);
	audio_play_sound(a_swipe, 8, false);
	switch direction_facing_ {
		//case dir.up: _hitbox.y -= 4; break;	
		default: _hitbox.y -= 8; break;
	}
}

if animation_hit_frame(image_number - 1) {
	//sprite_index = sprite_[state_, direction_facing_];
	state_ = player.move;
}
