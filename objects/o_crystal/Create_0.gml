depth = -bbox_bottom;
wall_ = instance_create_layer(x, y, "Instances", o_solid);
wall_enemies = instance_create_layer(x, y, "Instances", o_solid_for_enemies,);
if is_in_destroyed_list(id) {
	instance_destroy();
	instance_destroy(wall_);
	instance_destroy(wall_enemies);
}
