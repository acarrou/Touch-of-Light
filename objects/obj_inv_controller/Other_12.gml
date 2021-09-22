///@desc	open toggable inventories

/*
	Event used to open the (player) inventories. This includes only inventory panels
	that are toggable, other panels like the toolbar or the mouse item are always open.
*/

//Avoid creating duplicate panels if the inventory is already open
if(inventory_is_open) { exit; }

//Show the player backpack inventory
ex_ui_panel_open(global.inv_backpack, obj_inv_panel_backpack, 50, 60, layer);

//Show the player equipment
ex_ui_panel_open(global.inv_equipment, obj_inv_panel_equipment, 370, 60, layer);

//Show the crafting panel
ex_ui_panel_open(global.inv_craft, obj_inv_panel_craft, 200, 60, layer);

inventory_is_open = true;
