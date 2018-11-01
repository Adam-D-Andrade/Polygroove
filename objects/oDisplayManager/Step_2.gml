/// @description Calculate camera position and zoom

//Zoom View
var zoom_speed = 0.1;
global.view_zoom += keyboard_check_pressed(vk_add) * zoom_speed;
global.view_zoom -= keyboard_check_pressed(vk_subtract) * zoom_speed;

global.view_zoom = clamp(global.view_zoom,0.2,global.view_max_zoom);

//Follow Camera Object
if instance_exists(oCamera) {
	
	global.view_x = oCamera.x - (global.view_w/global.view_zoom)/2;
	global.view_y = oCamera.y - (global.view_h/global.view_zoom)/2;

}

//Clamp the camera to not be able to move outside the room
//global.view_x = clamp(global.view_x, 0, room_width - global.view_w);
//global.view_y = clamp(global.view_y, 0, room_height - global.view_h);

var _round = global.view_w/surface_get_width(application_surface);// equals 1 apparently

camera_set_view_size(view_camera[0], global.view_w/global.view_zoom, global.view_h/global.view_zoom);
camera_set_view_pos(view_camera[0], round_n(global.view_x, _round), round_n(global.view_y, _round));

if (global.view_zoom != 1) { global.view_zoom = lerp(global.view_zoom, 1, 0.1); }


