///@desc destroy all savable instances, and load new ones from json
///@param json
function load_instances(argument0) {

	var json = argument0

	with(all) {
		if (ds_map_exists(global.save_map, object_index)) {
			instance_destroy();
		}
	}

	var m = json_decode(json);
	var list = m[?"instances"];
	for(var i = 0; i < ds_list_size(list); i++) {
		var map = list[|i];
		save_map_get_instance(map);
	}

	ds_map_destroy(m);



}
