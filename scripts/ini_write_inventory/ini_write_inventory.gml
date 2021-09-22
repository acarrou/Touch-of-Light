///@arg section
///@arg name
///@arg inventory array
function ini_write_inventory(argument0, argument1, argument2) {
	var _section = argument0;
	var _name = argument1;
	var _inventory_array = argument2;

	var _array_size = array_length_1d(_inventory_array);
	for (var _i=0; _i<_array_size; _i++) {
		var _value = _inventory_array[_i];
		if instance_exists(_value) {
			ini_write_string(_section, _name+string(_i), object_get_name(_value.object_index));	
		} else {
			ini_write_real(_section, _name+string(_i), _value);
		}
	}



}
