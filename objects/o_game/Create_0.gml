audio_group_load(audiogroup_Music);
audio_group_load(audiogroup_sound_effects);


global.one_second = game_get_speed(gamespeed_fps);
global.destroyed = [];
instance_create_layer(0, 0, "Instances", o_input);

image_speed = 1;

var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+?%<";
global.font = font_add_sprite_ext(s_new_font, _font_string, true, 1);
draw_set_font(global.font);

hpShow = 100;
hpmaxShow = 100;

instance_create_layer(0,0, "Instances", obj_game_controller);

//window_set_size(view_wport[0], view_hport[0]);

global.inv_save = false;
global.inv_load = false;

global.game_start = r_to_world;
global.player_max_health = 100;
global.hp = global.player_max_health;
global.player_max_stamina = 100;
global.stamina = global.player_max_stamina;
global.player_gems = 0;
global.player_bombs = 3;
global.player_fireball = 3;
global.pause1 = false;
global.time = 9;
global.stamina_out = false;
global.no_item = false;
global.shoot = false;


//for ds_map file
global.loadMap = -1;
global.shake = false;
alarm[0] = 0;
/*
global.view_width = 1920/4;
global.view_height = 1080/4;
display_set_gui_size(global.view_width, global.view_height);
*/
instance_create_layer(0,0, "Instances", o_Main_Camera);
paused_ = false;
paused_sprite_ = noone;


global.item[0] = noone;
global.item[1] = noone;
item_index_ = 0;



inventory_create(8);
inventory_add_item(o_fireball);
inventory_add_item(o_bow_item);
inventory_add_item(o_bomb_item);
inventory_add_item(o_sword_item);

//MAIN FILE SAVE NAME
global.file_name = "SaveData.sav";

//ALL NPC VARIABLES AND INTERACTIONS SET HERE: (Hint: should all be set to nooone)

//NPC1
global.NPC1 = noone;
global.NPC1_interact = false;

//NPC2


//END OF DIALOGUE NPCS

global.inventory_weapons = ds_list_create();

//Weapons
enum weapons{
	sword,
	bow,
	fireball
}


	
