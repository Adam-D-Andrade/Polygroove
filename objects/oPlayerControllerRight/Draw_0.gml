/// @description

draw_trail_ext(27, global.colorGreen, -1, false, 0.5);
draw_polygon(x,y, points, radius*player_scale, rotation, thickness*player_scale, global.colorGreen);

var half_width = sprite_width/2;
var half_height = sprite_height/2;

if (global.custom_debug_mode) {
	draw_rectangle(room_width/2 + x_limit - half_width, 
					y_limit-half_height, 
					room_width - center_proximity_limit + half_width, 
					room_height - y_limit + half_height, 
					true);
}

lives_x_pos = room_width - 50 - (25*(current_lives-1));
lives_y_pos = room_height - 22;

for (var i = 0; i < current_lives; i++){
	draw_sprite_ext(sprPlayer, 0, room_width - 50 - (25*i), room_height - 22, scale, scale, rot, c_white, 1);
}