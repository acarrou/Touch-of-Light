if hurtbox_entity_can_be_hit_by(other) {
	add_to_destroyed_list(id);
	instance_destroy();
	instance_destroy(wall_);
	instance_destroy(wall_enemies);
	create_animation_effect(s_rock_effect, x, y, 1, true);
}
