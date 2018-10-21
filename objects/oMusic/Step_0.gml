/// @description


if (time_tracking){
	time += (delta_time*0.000001);
	beats += (delta_time*0.001) mod (60/global.beatsPerSecond);  // This was hardcoded to 130 previously?
}

global.target_value = time mod (global.beatsPerSecond);

test = (current_time mod bpm)/bpm; //value from 0 461 --> divided by 461, value now 0 - 1

if (global.target_value >= -0.05) and (global.target_value <= 0.05){
	if (bpmTrigger){
		instance_create_layer(x, y, "Instances", oInputSignal);
		with(oCenterPoint) {
			radius = 50;
			line_width = 20;
			//we should create some particle effect here on the beat
			//Forest: placer the part_particles_create code here
		}
		
		//prevent from making instances too fast
		bpmTrigger = !bpmTrigger;
		alarm[0] = 5;
	}

	
}





