///@arg instance_id
function is_in_destroyed_list(argument0) {
	var _id = argument0;
	return array_find_index(instance_key(_id), global.destroyed) != -1;


}
