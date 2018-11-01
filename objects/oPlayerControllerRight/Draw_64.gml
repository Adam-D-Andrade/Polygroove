/// @description Draw UI Here to Prevent Variability

var half_width = sprite_width/2;
var half_height = sprite_height/2;


if (global.custom_debug_mode) {
	draw_rectangle(camera_get_view_width(view_camera[0])/2 + x_limit - half_width, 
					y_limit-half_height, 
					camera_get_view_width(view_camera[0]) - center_proximity_limit + half_width, 
					camera_get_view_height(view_camera[0]) - y_limit + half_height, 
					true);
}

var yoffset = 0.10 * display_get_gui_height();
var xoffset = 0.05 * display_get_gui_width();

for (var i = 0; i < current_lives; i++){
	draw_sprite_ext(sprPlayer, 0, display_get_gui_width() - xoffset - (25*i), display_get_gui_height() - yoffset, scale, scale, rot, c_white, 1);
}