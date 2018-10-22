/// @description
x = room_width/2;
y = -sprite_height/2;


InitPolygonVars(360, 20, 20, 0);

if instance_exists(oCenterPoint){
	distance_to_input_buffer = oCenterPoint.y - y;
}

dist = 0;

