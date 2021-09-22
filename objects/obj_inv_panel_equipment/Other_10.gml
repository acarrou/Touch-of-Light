///@desc on open

//inherit the parent event
event_inherited();

//create slots
slot_head =		ex_ui_slot_create(id,0,36,12,obj_inv_slot);
slot_body =		ex_ui_slot_create(id,1,36,48,obj_inv_slot);
slot_lhand =	ex_ui_slot_create(id,2,12,60,obj_inv_slot);
slot_rhand =	ex_ui_slot_create(id,3,60,60,obj_inv_slot);
slot_feet =		ex_ui_slot_create(id,4,36,96,obj_inv_slot);