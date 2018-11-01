/// @description

draw_trail_ext(27, global.colorGreen, -1, false, 0.5);
draw_polygon(x,y, points, radius*player_scale, rotation, thickness*player_scale, global.colorGreen);


if (global.custom_debug_mode) {
	draw_rectangle(x_limit, y_limit, camera_get_view_width(view_camera[0])/2 - center_proximity_limit, camera_get_view_height(view_camera[0]) - y_limit, true);
}



