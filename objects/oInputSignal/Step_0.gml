/// @description


var y_speed_this_frame = (distance_to_input_buffer/global.beatsPerSecond) * global.seconds_passed;

y += y_speed_this_frame;

if ((y >= oCenterPoint.y) && (is_visible)){
	is_visible = !is_visible;
	
	with(oCamera) {
		screen_shake(4,4,4,4,4);
	}
	alarm[0] = 30;
}


//part_particles_create(global.particleSystem, x,y, global.ptWhiteOrb, 5);