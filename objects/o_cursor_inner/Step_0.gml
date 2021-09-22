depth = -y;

if instance_exists(o_player){

var distance = clamp(point_distance(mouse_x, mouse_y, o_player.x, o_player.y), 0, 20);

x = o_player.x + lengthdir_x(distance, point_direction(o_player.x, o_player.y, mouse_x, mouse_y));

y = o_player.y + lengthdir_y(distance, point_direction(o_player.x, o_player.y, mouse_x, mouse_y));
}