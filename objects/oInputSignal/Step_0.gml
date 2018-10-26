/// @description


var y_speed_this_frame = (distance_to_input_buffer/global.beatsPerSecond) * global.seconds_passed;

y += y_speed_this_frame;

if ((y >= oCenterPoint.y) && (is_visible)){
	is_visible = !is_visible;
}