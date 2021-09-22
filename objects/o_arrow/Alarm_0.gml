/// @description Bullet Drop
//Exception for depth
if image_angle == 0 or image_angle == 180 {
	if y < other.bbox_top + 5 {
		exit;
	}
}

var _arrow_hit = instance_create_layer(x, y-7, "Instances", o_arrow_fall);
_arrow_hit.image_angle = image_angle;
instance_destroy();

