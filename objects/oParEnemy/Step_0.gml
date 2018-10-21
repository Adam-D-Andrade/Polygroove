/// @description

var y_speed_this_frame = 0.5*(distance_to_input_buffer/global.beatsPerSecond) * global.seconds_passed;

y += y_speed_this_frame;


if (scale != 1) {
	scale = Approach(scale, 1, 0.5);
}

if (rotation != 0) {
	rotation = Approach(rotation, 0, 0.5);
}
