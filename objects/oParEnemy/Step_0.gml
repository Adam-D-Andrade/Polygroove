/// @description

//var y_speed_this_frame = 0.5*(distance_to_input_buffer/global.beatsPerSecond) * global.seconds_passed;

//y += y_speed_this_frame;


if (scale != 1) {
	scale = lerp(scale, 1, 0.1);
}

if (rotation != 0) {
	rotation = lerp(rotation, 0, 0.05);
}

if (move) {
	move = !move;
	target_y = y + 64;
}

y = lerp(y, target_y, 0.1);

if (y > camera_get_view_height(view_camera[0])) {instance_destroy();}