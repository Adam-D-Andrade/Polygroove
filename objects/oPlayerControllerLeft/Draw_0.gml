/// @description

draw_self();


if (global.custom_debug_mode) {
	draw_rectangle(x_limit, y_limit, room_width/2 - center_proximity_limit, room_height - y_limit, true);
}

for (var i = 0; i < global.PlayerLives; i++){
	//draw_sprite_ext(sprite_index, 0, room)
}

