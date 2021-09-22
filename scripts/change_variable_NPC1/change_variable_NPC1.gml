///@description change_variable
///@arg obj
///@arg var_name_as_string
///@arg new_value
function change_variable_NPC1(argument0, argument1, argument2) {

	with(argument0) var oid = id;
	variable_instance_set(oid, argument1, argument2);

	global.NPC1 = argument2;
	global.NPC1_interact = true;

	//var map1 = ds_map_create();

	//global.answer = argument2;
		//map1[? "choice_variable"] = argument2;
		
		//ds_map_secure_save(map1, global.file_name);
		//show_message(ds_map_size(map1));
		//ds_map_destroy(map1);


}
