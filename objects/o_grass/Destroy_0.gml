if chance(.1) {
	var _item = choose(o_gem_pickup, o_heart_pickup, o_bomb_pickup,o_scroll_pickup);
	instance_create_layer(x+8, y+8, "Instances", _item);
}
instance_create_layer(x,y, "Effects",o_grass_residue);