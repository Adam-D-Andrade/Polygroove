/// @description


if (time_tracking){
	time += (delta_time*0.000001);
	beats += (delta_time*0.001) mod (60/global.beatsPerMinute);  // This was hardcoded to 130 previ
}

global.target_value = time mod (global.beatsPerSecond);

test = (current_time mod bpm)/bpm; //value from 0 461 --> divided by 461, value now 0 - 1

#region Trigger on Beat Stuff
if (global.target_value >= -0.05) and (global.target_value <= 0.05){
	
	//BPM trigger allows us to only trigger this once otherwise this will occur many times.
	if (bpmTrigger){
		instance_create_layer(x, y, "Instances", oInputSignal);
		with(oCenterPoint) {
			radius = 50;
			line_width = 20;
			
			//we should create some particle effect here on the beat
			//Forest: placer the part_particles_create code here
		}
		
		with instance_create_layer(x,y, "Instances", oParEnemy) {
			x = choose(xLeft[irandom_range(0,5)], xRight[irandom_range(0,5)]);
		}
		
		//prevent from making instances too fast
		bpmTrigger = !bpmTrigger;
		alarm[0] = 5;
	}
}
#endregion





