if room == r_carrout {
	exit;
}

if room == r_title {
	exit;
}

if room == r_game_over {
	exit;
}

if room == r_how_to_play_title {
	exit;
}

if room == r_how_to_play_pause {
	exit;
}
if(!show_inventory) exit;

draw_sprite_part_ext(spr_inv_UI, 0, cell_size, 0, inv_UI_width, inv_UI_height,
inv_UI_x+10, inv_UI_y+5, scale, scale, c_white, 1);


var info_grid = ds_player_info;

draw_set_font(global.font);
var c = c_white;
draw_text_color(info_x+50, info_y+13, info_grid[# 0, 3] + ": ", c,c,c,c, 1);

var yy = 0;
	draw_text_color(info_x + (250*scale) + ((7.5+9)*scale*yy), info_y+13, string(info_grid[# 1, 0]), c,c,c,c, 1);
	yy += 1;
	
//Inventory
var ii, ix, iy, xx, yy, sx, sy, iitem, inv_grid;
ii = 0; ix = 0; iy = 0; inv_grid = ds_inventory;


repeat(inv_slots) {
	//x, y, location
	xx = slots_x +((cell_size + x_buffer)*ix*scale);
	yy = slots_y +((cell_size + y_buffer)*iy*scale);
	
	//Item
	iitem = inv_grid[# 0, ii];
	sx = (iitem mod spr_inv_items_columns)*cell_size;
	sy = (iitem div spr_inv_items_columns)*cell_size;
	
	//Draw Slot and Item
	draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, 1);
	
	switch(ii) {
		case selected_slot:
			if (iitem > 0)
				draw_sprite_part_ext( spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 1);
				
				gpu_set_blendmode(bm_add);
				draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, .3);
				gpu_set_blendmode(bm_normal);
		break;
		
		case pickup_slot:
			if (iitem > 0)
				draw_sprite_part_ext( spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 0.2);
		break;
		
		default:
			if (iitem > 0)
				draw_sprite_part_ext( spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 1);
	}
	
	//Draw Item Number
	if (iitem > 0) {
		var number = inv_grid[# 1, ii];
		draw_text_color(xx+1, yy, string(number), c,c,c,c, 1);
	}
	
	//Increment
	ii += 1;
	ix = ii mod inv_slots_width;
	iy = ii div inv_slots_width;
}

//Draw Item Description
var iinfo_grid = ds_item_info, description = "";
iitem = inv_grid[# 0, selected_slot];

if(iitem > 0) {
	draw_set_font(global.font);
	description = iinfo_grid[# 0, iitem] + ". " + iinfo_grid[# 1, iitem];
	draw_text_ext_color(desc_x, desc_y, description, string_height("M"), (inv_UI_width*scale) - (x_buffer*20), c,c,c,c, 1);
}

if(pickup_slot != -1) {
	//Item
	iitem = inv_grid[# 0, pickup_slot];
	sx = (iitem mod spr_inv_items_columns)*cell_size;
	sy = (iitem div spr_inv_items_columns)*cell_size;
	draw_sprite_part_ext( spr_inv_items, 0, sx, sy, cell_size, cell_size, mousex, mousey, scale, scale, c_white, 1);
	
	var inum = inv_grid[# 1, pickup_slot];
	draw_text_color(mousex + (cell_size*scale*0.5)*5 , mousey, string(inum), c,c,c,c, 1);
}


