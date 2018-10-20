/// @description


if (time_tracking){
	time += (delta_time*0.000001);
	beats += (delta_time*0.001) mod (60/130);
}
var val = time mod (global.beatsPerSecond)

if (val >= -0.05) and (val <= 0.05){
	instance_create_layer(x, y, "Instances", oInputSignal);
	with(oCenterPoint) {
		image_xscale = 2;
		image_yscale = 2;
	}
}


