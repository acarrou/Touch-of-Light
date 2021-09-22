instance_create_layer(0, 0 , "Instances", o_fullscreen);


if (ds_exists(global.loadMap, ds_type_map)){
	loading_game()
	global.inv_load = true;
}
