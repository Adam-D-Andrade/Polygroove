/// @description


if (time_tracking){
	time += (delta_time*0.000001);
	beats += (delta_time*0.001) mod (60/130);
}

global.target_value = time mod (global.beatsPerSecond)

global.accuracy[r.bad] = (global.target_value < -0.3) && (global.target_value > 0.3)
global.accuracy[r.good] = (global.target_value >= -0.3) && (global.target_value <= 0.3)
global.accuracy[r.great] = (global.target_value >= -0.15) && (global.target_value <= 0.15)
global.accuracy[r.perfect] = (global.target_value >= -0.05) && (global.target_value <= 0.05)

if (global.target_value >= -0.05) and (global.target_value <= 0.05){
	instance_create_layer(x, y, "Instances", oInputSignal);
	with(oCenterPoint) {
		image_xscale = 2;
		image_yscale = 2;
	}
}





