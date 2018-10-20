/// @description Insert description here
// You can write your code in this editor

camera_set_view_size(view_camera[0], global.view_w, global.view_h);

//Follow Player
/*
if instance_exists(oPlayer) {
	//Centers the camera directly on the player
	//global.view_x = oPlayer.x - global.view_w/2;
	//global.view_y = oPlayer.y - global.view_h/2;
	
	global.view_x = oCamera.x - global.view_w/2;
	global.view_y = oCamera.y - global.view_h/2;

}
*/

//Clamp the camera to not be able to move outside the room
//global.view_x = clamp(global.view_x, 0, room_width - global.view_w);
//global.view_y = clamp(global.view_y, 0, room_height - global.view_h);

var _round = global.view_w/surface_get_width(application_surface);
camera_set_view_pos(view_camera[0], round_n(global.view_x, _round), round_n(global.view_y, _round));

