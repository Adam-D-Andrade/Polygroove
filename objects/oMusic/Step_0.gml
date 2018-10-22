/// @description


if (time_tracking){
	time += (delta_time*0.000001);
	//beats += (delta_time*0.001) mod (60/global.beatsPerMinute);  // This was hardcoded to 130 previ
}

global.target_value = time mod (global.beatsPerSecond);

test = (current_time mod bpm)/bpm; //value from 0 461 --> divided by 461, value now 0 - 1

#region Trigger on Beat Stuff
if (global.target_value >= -0.05) and (global.target_value <= 0.05){
	
	//BPM trigger allows us to only trigger this once otherwise this will occur many times.
	if (bpmTrigger){
		total_beats++;
		
		with(oCenterPoint) {
			scale = 3;
			line_width = 40;
			
			//we should create some particle effect here on the beat
			//Forest: placer the part_particles_create code here
		}
		
		//Within the beats requiring palyer input
		if (total_beats >= start_beat) && (total_beats <= end_beat){
			instance_create_layer(x, y, "Instances", oInputSignal);

			//On create, give initial effects
			with instance_create_layer(x,-32, "Instances", oParEnemy) {
				x = choose(xLeft[irandom_range(0,5)], xRight[irandom_range(0,5)]);
				rotation = 359;
				scale = 2;
				target_y = y + 64;
			
			}
			
			//On beat reapply effects
			with (oParEnemy) {
				move = true;
				rotation = choose(-359,359);
				scale = 2;
			}
		}
		
		with(oPlayerControllerLeft){
			rot = choose(-359, 359);
			scale = 0.8;
		}
		
		with(oPlayerControllerRight){
			rot = choose(-359, 359);
			scale = 0.8;
		}
		
		//because of the range value given for the beat, this is required other wise multiple frames
		//will be returning true and this code will run too many times.
		bpmTrigger = !bpmTrigger;
		alarm[0] = 5;
	}
}
#endregion


#region End of Song and Level

//end_beat is the last beat of the song requiring player input
if (total_beats >= end_beat){
	instance_destroy(oParEnemy);
}

//max_beats_on_track
if (total_beats >= max_beats_on_track) {
	total_beats = 0;
	global.level_counter++;
	
	oController.next_level = true;
	audio_group_unload(audio_group_music);
	instance_destroy();
	
}

#endregion
