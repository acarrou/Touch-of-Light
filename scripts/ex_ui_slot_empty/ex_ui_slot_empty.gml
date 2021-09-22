///@func	ex_ui_slot_empty(slot)
///@desc	Returns true if the specified slot instance is empty (has no item)
///@arg		{instance} slot - slot instance to check
///@return	{boolean}
function ex_ui_slot_empty(argument0) {

	var _slot = argument0;

	return _slot.item < 0;


}
