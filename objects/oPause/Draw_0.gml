/// @description
/// @description


if surface_exists(screen)
{ 
	//shader_set(shd_gaussian_blur);
	//shader_set_uniform_f(usize,1024,1024, 8);    
	draw_surface_ext(screen, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 1, 1, 0, c_white, 0.5);
	//shader_reset();
	//shader_set(shd_black_flash);
	//draw_rectangle(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), false);
	//shader_reset();      
}

