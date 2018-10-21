/// @description Insert description here
// You can write your code in this editor


rotation_array = pulse_polygon_value(rotation, -360, 360, growing_status, pulse_magnitude);
rotation = rotation_array[0];
growing_status = rotation_array[1];


thickness_array = pulse_polygon_value(thickness, 50, 200, thickness_growing_status, pulse_magnitude);
thickness = thickness_array[0];
thickness_growing_status = rotation_array[1];
