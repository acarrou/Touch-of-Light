if chance(1) {
	var _item = choose(o_gem_pickup, o_heart_pickup, o_bomb_pickup,o_stamina_boost,o_health_boost,o_scroll_pickup);
	instance_create_layer(x+8, y+40, "Instances", _item);
}