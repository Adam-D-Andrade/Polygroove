/// @description

draw_self();

var half_width = sprite_width/2;
var half_height = sprite_height/2;

if (global.custom_debug_mode) {
	draw_rectangle(room_width/2 + x_limit - half_width, 
					y_limit-half_height, 
					room_width - center_proximity_limit + half_width, 
					room_height - y_limit + half_height, 
					true);
}