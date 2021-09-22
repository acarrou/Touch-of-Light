if hurtbox_entity_can_be_hit_by(other) {
	instance_destroy();
	create_animation_effect(s_grass_effect, x, y, random_range(.6, .8), true);
}