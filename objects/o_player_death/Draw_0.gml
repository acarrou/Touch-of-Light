draw_sprite_ext(s_blackout, 0, 0,0, 100,100, 0, c_white, 1);
draw_sprite(s_light,0,x,y);
draw_sprite(s_medium_shadow, 0, x, y);
draw_self();
instance_deactivate_object(obj_inv_panel_toolbar);
