/// @description




y = -sprite_height/2;


init_polygon_vars(360, 20, 20, 0);

if instance_exists(oCenterPoint){
	distance_to_input_buffer = oCenterPoint.y - (y - sprite_yoffset);
}

dist = 0;

is_visible = true;