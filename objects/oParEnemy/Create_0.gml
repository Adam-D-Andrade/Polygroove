/// @description


var sprite_offset = sprite_get_xoffset(sprPlayer);

target_y = 0;
move = false;

//Setup Polygon Drawing 
rotation = 0;
init_polygon_vars(3, 20,10, rotation);
scale = 1;
//rotation = 0;

//Position is Relative to center, 0 is clsoest x positiong the player can be to the center line
//xLeft[0] = 
//xLeft[1] = 
//xLeft[2] = 
//xLeft[3] = //shit above 0-5 goes here but in reverse order
//xLeft[4] = 
//xLeft[5] = 

//xRight[0] = half_w + right_offset;
//xRight[1] = half_w + right_offset + 64*1;
//xRight[2] = half_w + right_offset + 64*2;
//xRight[3] = half_w + right_offset + 64*3;
//xRight[4] = half_w + right_offset + 64*4;
//xRight[5] = half_w + right_offset + 64*5;


if instance_exists(oCenterPoint){
	distance_to_input_buffer = oCenterPoint.y - y;
}