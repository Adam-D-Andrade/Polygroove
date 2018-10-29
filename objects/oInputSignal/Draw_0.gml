/// @description

if (is_visible){
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprLightSpot, 0, x, y, 0.25, 0.25, 0, c_white, 1);
	//draw_polygon(x,y, points, radius, rotation, thickness, c_white);
	gpu_set_blendmode(bm_normal);
}
