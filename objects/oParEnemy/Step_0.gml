/// @description

var y_speed_this_frame = 0.5*(distance_to_input_buffer/global.beatsPerSecond) * global.seconds_passed;

y += y_speed_this_frame;
