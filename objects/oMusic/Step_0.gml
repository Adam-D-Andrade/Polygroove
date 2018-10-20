/// @description


//Calculate Delta Time
global.seconds_passed = delta_time/1000000;

if (time_tracking){
	time = (current_time - start_time);
}

if (time mod (global.beatsPerSecond * 1000) == 0){
	with(oCenterPoint) {
		image_xscale = 2;
		image_yscale = 2;
	}
}
