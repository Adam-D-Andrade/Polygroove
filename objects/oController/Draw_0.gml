/// @description


if (global.custom_debug_mode) {
	for (var i = 0; i < array_length_1d(x_grid); i++){
		draw_line(x_grid[i], 0, x_grid[i], camera_get_view_height(view_camera[0]));
	}	
}