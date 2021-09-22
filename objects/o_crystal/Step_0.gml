if (!instance_exists(o_boss)){
	create_animation_effect(s_crystal_effect, x, y, 1, true);
	add_to_destroyed_list(id);
	instance_destroy();
	instance_destroy(wall_);
	instance_destroy(wall_enemies);
	
	}