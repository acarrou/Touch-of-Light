/// @description Hit logic

if hurtbox_entity_can_be_hit_by(other) {
	global.currently_rolling = false;
	//camera shake
	global.shake = true;
	invincible_ = true;
	alarm[0] = global.one_second *0.75;
	global.hp -= other.damage_;
	var _direction = point_direction(other.x, other.y, x, y);
	set_movement(_direction, other.knockback_);
	state_ = starting_state_;
	audio_play_sound(a_hurt, 6, false);
	if other.destroy_on_contact_  {
		instance_destroy(other);
	}
}