/// @description

draw_trail_ext(27, global.colorGreen, -1, false, 0.5);
DrawPolygon(x,y, points, radius*player_scale, rotation, thickness*player_scale, global.colorGreen);


if (global.custom_debug_mode) {
	draw_rectangle(x_limit, y_limit, room_width/2 - center_proximity_limit, room_height - y_limit, true);
}

lives_x_pos = 50 + (25*(current_lives-1));
lives_y_pos	= room_height - 22;

for (var i = 0; i < current_lives; i++){
	draw_sprite_ext(sprPlayer, 0, 50+(25*i), room_height - 22, scale, scale, rot, c_white, 1);
}

