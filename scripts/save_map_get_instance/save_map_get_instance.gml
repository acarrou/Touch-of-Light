///@param map
function save_map_get_instance(argument0) {

	var map = argument0;

	var object = map[?"object_index"];
	var _layer = map[?"layer"];

	var instance = instance_create_layer(0, 0, _layer, object);

	var var_array = global.save_map[?object];

	for(var i = 0; i < array_length_1d(var_array); i++) {
		var name = var_array[i];
		var value = map[?name];
	
		variable_instance_set(instance, name, value);
	}

	return instance;



}
