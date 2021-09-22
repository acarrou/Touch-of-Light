depth = -1;
scale = 1;
show_inventory = false;

inv_slots = 16;
inv_slots_width = 8;
inv_slots_height = 3;

selected_slot = 0;
pickup_slot = -1;
m_slotx = 0;
m_sloty = 0;

x_buffer = 2;
y_buffer = 4;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height()+25;

cell_size = 32;

inv_UI_width = 320;
inv_UI_height = 270;

spr_inv_UI = spr_inventory_ui;
spr_inv_items = spr_inventory_items;

spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size
spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);

info_x = inv_UI_x + (9 * scale);
info_y = inv_UI_y + (9 * scale);

slots_x = info_x + 10;
slots_y = info_y + (35 * scale);

desc_x = info_x+140;
desc_y = 130 + inv_UI_y + (40 * scale);


//Player Info

ds_player_info = ds_grid_create(2, 4);
ds_player_info[# 0, 0] = "Gems";


//THESE ARE FOR EITHER CURENCY OR NAME OF CHARACTER IN FUTURE USE
ds_player_info[# 0, 0] = global.player_gems;;
ds_player_info[# 0, 1] = "Silver";
ds_player_info[# 0, 2] = "Copper";
ds_player_info[# 0, 3] = "Inventory";


//THESE ARE FOR EITHER CURENCY OR NAME OF CHARACTER IN FUTURE USE
ds_player_info[# 1, 0] = global.player_gems;
ds_player_info[# 1, 1] = irandom_range(0, 99);
ds_player_info[# 1, 2] = irandom_range(0, 99);
ds_player_info[# 1, 3] = irandom_range(0, 99);

//Inventory
ds_inventory = ds_grid_create(2, inv_slots);

//Items
enum item {
	none			= 0,
	tomato		= 1,
	potato		= 2,
	carrot		= 3,
	artichoke	= 4,
	chilli			= 5,
	gourd			= 6,
	corn			= 7,
	wood			= 8,
	stone			= 9,
	bucket		= 10,
	chair			= 11,
	picture		= 12,
	axe				= 13,
	potion		= 14,
	starfish		= 15,
	mushroom= 16,
	height		= 17,	
}

#region Create Items Info Graph
ds_item_info = ds_grid_create(2, item.height);

//Item Names
var z = 0, i = 0;
ds_item_info[# z, i++] = "Nothing";
ds_item_info[# z, i++] = "Tomamto";
ds_item_info[# z, i++] = "Potato";
ds_item_info[# z, i++] = "Carrot";
ds_item_info[# z, i++] = "Artichoke";
ds_item_info[# z, i++] = "Chilli";
ds_item_info[# z, i++] = "Gourd";
ds_item_info[# z, i++] = "Corn";
ds_item_info[# z, i++] = "Wood";
ds_item_info[# z, i++] = "Stone";
ds_item_info[# z, i++] = "Bucket";
ds_item_info[# z, i++] = "Chair";
ds_item_info[# z, i++] = "Picture";
ds_item_info[# z, i++] = "Axe";
ds_item_info[# z, i++] = "Potion";
ds_item_info[# z, i++] = "Starfish";
ds_item_info[# z, i++] = "Mushroom";
ds_item_info[# z, i++] = "Gem";


//Item Descriptions
var z = 1, i = 0;
ds_item_info[# z, i++] = "Empty.";
ds_item_info[# z, i++] = "Tomamto makes duh spicy meat bolls.";
ds_item_info[# z, i++] = "Pre-chips.";
ds_item_info[# z, i++] = "Rabbits go crazy for this.";
ds_item_info[# z, i++] = "does not choke of create art.";
ds_item_info[# z, i++] = "spicy goodness.";
ds_item_info[# z, i++] = "No one likes eating this.";
ds_item_info[# z, i++] = "Better popped with a movie.";
ds_item_info[# z, i++] = "Could make a house, if I had more...";
ds_item_info[# z, i++] = "not as cool as a rock.";
ds_item_info[# z, i++] = "water looks like it goes in here.";
ds_item_info[# z, i++] = "why would I want to sit.";
ds_item_info[# z, i++] = "Who dis?";
ds_item_info[# z, i++] = "I could make more wood with this.";
ds_item_info[# z, i++] = "its a gewy substance.";
ds_item_info[# z, i++] = "is this really a star or a fish?";
ds_item_info[# z, i++] = "A weird name to have for a fungus.";

#endregion


var yy = 0; repeat(inv_slots){
ds_inventory[# 0, yy] = irandom_range(1, item.height-1);
ds_inventory[# 1, yy] = irandom_range(1, 10);
	
	yy += 1;
}


