/// @description

//Drawing the Interaction Icon on the NPC
if (distance_to_object( o_player ) <= 7){
draw_sprite(E_key,0,x-5,y-20);
} 


var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;

if		(moveX < 0) y_frame = 9;
else if (moveX > 0) y_frame = 11;
else if (moveY < 0) y_frame = 8;
else if (moveY > 0) y_frame = 10;
else				x_frame = 0;

var xx = x-x_offset;
var yy = y-y_offset;

//DRAW CHARACTER SHADOW,dont need anymore
draw_sprite(s_medium_shadow, 0, x,y+20);
draw_self();


/*
if (s_medium_shadow != -1) draw_sprite(s_medium_shadow, 0, x,y+20);
if (spr_examplechar2 != -1) draw_sprite(spr_examplechar2, 0, x,y);



if (spr_examplechar2 != -1) draw_sprite_part(spr_examplechar2, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx,yy);
*/


//INCREMENT FRAME FOR ANIMATION
if(x_frame < anim_length -1) {x_frame += anim_speed/60; }
else						 {x_frame = 1;  }
