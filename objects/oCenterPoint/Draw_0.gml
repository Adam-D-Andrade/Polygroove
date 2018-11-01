/// @description


//var center_x = camera_get_view_width(view_camera[0])/2;
//var center_y = camera_get_view_height(view_camera[0])/2;


gpu_set_blendmode(bm_add);
draw_sprite_ext(sprLightLaser, 0, center_x, -32, line_scale, line_width, 270, c_white, 1);
gpu_set_blendmode(bm_normal);




if( global.custom_debug_mode){
	draw_circle(x, y, distance_rating[r.bad], true);
	draw_circle(x, y, distance_rating[r.good], true);
	draw_circle(x, y, distance_rating[r.great], true);
	draw_circle(x, y, distance_rating[r.perfect], true); // too small to see
}

//draw_polygon(x, y, points, radius*scale, rotation, thickness*scale, global.colorYellow); 

//draw_circle_color(x, y, radius, global.colorYellow, global.colorYellow, false);