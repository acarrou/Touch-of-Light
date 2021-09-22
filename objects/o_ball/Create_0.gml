direction = point_direction(x,y, mouse_x, mouse_y);
direction = direction + random_range(-2,2);
speed = 5;
image_angle = direction;

event_inherited();
targets_ = [o_grass, o_enemy, o_boss,o_plant];
knockback_ = 2;
damage_ = 75;
destroy_on_contact_ = true
