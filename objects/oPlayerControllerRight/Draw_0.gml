/// @description

draw_trail_ext(27, global.colorGreen, -1, false, 0.5);
draw_polygon(x,y, points, radius*player_scale, rotation, thickness*player_scale, global.colorGreen);

var half_width = sprite_width/2;
var half_height = sprite_height/2;

if (global.custom_debug_mode) {
	draw_rectangle(camera_get_view_width(view_camera[0])/2 + x_limit - half_width, 
					y_limit-half_height, 
					camera_get_view_width(view_camera[0]) - center_proximity_limit + half_width, 
					camera_get_view_height(view_camera[0]) - y_limit + half_height, 
					true);
}

lives_x_pos = camera_get_view_width(view_camera[0]) - 50 - (25*(current_lives-1));
lives_y_pos = camera_get_view_height(view_camera[0]) - 22;

var yoffset = 0.10 * camera_get_view_height(view_camera[0]);
var xoffset = 0.05 * camera_get_view_width(view_camera[0]);

for (var i = 0; i < current_lives; i++){
	draw_sprite_ext(sprPlayer, 0, camera_get_view_width(view_camera[0]) - xoffset - (25*i), camera_get_view_height(view_camera[0]) - yoffset, scale, scale, rot, c_white, 1);
}