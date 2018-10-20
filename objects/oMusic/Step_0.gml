/// @description


//Calculate Delta Time
global.seconds_passed = delta_time/1000000;

if (time_tracking){
	time += (delta_time*0.000001);
	beats += (delta_time*0.001) mod (60/130);
}
var val = time mod (global.beatsPerSecond)

if (val >= -0.1) and (val <= 0.1){
	with(oCenterPoint) {
		image_xscale = 2;
		image_yscale = 2;
	}
}


