/// @description

DrawPolygon(x, y, points, radius*scale, rotation, thickness, global.colorYellow);
//draw_sprite_ext(sprite_index, 0, x, y, scale, scale, rotation, global.colorYellow, 1);

if (global.custom_debug_mode) {
	for (var i = 0; i < array_length_1d(xLeft); i++){
		draw_line(xLeft[i], 0, xLeft[i], room_height);
		draw_line(xRight[i], 0, xRight[i], room_height);
	}
}


