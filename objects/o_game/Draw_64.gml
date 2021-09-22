//rooms without GUI:

if (global.hp <= 0) exit;
if (global.pause1) exit;

if room == r_title || room == r_carrout || room == r_game_over{
	exit;
}

//Face UI
draw_sprite(s_character_por,0,0,0);

//HP Bar
hpShow = lerp(hpShow, global.hp, 0.2);
hpmaxShow = lerp(hpmaxShow, global.player_max_health, 0.2);

var maxhpWidth = (hpmaxShow/100)*sprite_get_width(sHealthbar);
var hpWidth = (hpShow/100)*sprite_get_width(sHealthbar);
var hpHeight = sprite_get_height(sHealthbar);

draw_sprite_stretched(sHealthbar, 1, 34, 6, maxhpWidth, hpHeight);
draw_sprite_stretched(sHealthbar, 0, 34, 6, hpWidth, hpHeight);

//Stamina Bar
var stWidth = (global.stamina/100)*sprite_get_width(sStaminabar);
var stmaxWidth = (global.player_max_stamina/100)*sprite_get_width(sStaminabar);
var stHeight = sprite_get_height(sStaminabar);

draw_sprite_stretched(sStaminabar, 1, 34, 5.5*2 + hpHeight, stmaxWidth,stHeight);
draw_sprite_stretched(sStaminabar, 0, 34, 5.5*2 + hpHeight, stWidth,stHeight);

// GUI
draw_set_font(global.font);

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

if sprite_exists(paused_sprite_) {
	draw_sprite_ext(paused_sprite_, 0, 0, 0, global.paused_sprite_scale_, global.paused_sprite_scale_, 0, c_white, 1);
	draw_set_alpha(0.6)
	draw_rectangle_color(0, 0, _gui_width, _gui_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}



//Stamina Out Message
if  (global.stamina_out == true){
	draw_sprite(sStaminabar1,0,200,5.5*3.5);
}

//No Item Equippted Message
if  (global.no_item == true){
	//instance_create_layer(200,5.5*3.5, "Instances", stam);
	draw_sprite(s_no_item,0,200,5.5*3.5);
}


/*
//for stamina
var _hud_right_edge = max (global.player_max_stamina*14);
draw_sprite_ext(s_hud, 0, 0, _gui_height+12, _hud_right_edge, 1, 0, c_white, 1);
draw_sprite(s_hud_edge, 0, _hud_right_edge, _gui_height+12);


//for hearts
var _hud_right_edge = max (global.player_max_health*14);
draw_sprite_ext(s_hud, 0, 0, _gui_height-145, _hud_right_edge, 1, 0, c_white, 1);
draw_sprite(s_hud_edge1, 0, _hud_right_edge, _gui_height-145);


//health placement
for (var _i=0; _i<global.player_max_health; _i++) {
	var _filled = _i < global.player_health;
	draw_sprite(s_heart_ui, _filled, 1+14*_i, _gui_height-174);
}


//stamina placement
for (var _i=0; _i<global.player_max_stamina; _i++) {
	var _filled = _i < global.player_stamina;
	draw_sprite(s_stamina_ui, _filled, 1+14*_i, _gui_height-20);
}
*/

var _gem_string = string(global.player_gems);
var _text_width = string_width(_gem_string);
var _x = _gui_width - _text_width+4;
var _y = _gui_height - 16 +4;
draw_sprite(s_gem_inv, 0, _x-16, _y+7);
draw_text(_x-8, _y-1, _gem_string);

inventory_draw(4, 35);