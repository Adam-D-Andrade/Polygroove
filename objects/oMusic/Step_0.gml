/// @description

//debug to check dsgrid from csv file


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
		
		yy = total_beats - start_beat;
		
		with(oCenterPoint) {
			scale = 3; 
			line_width = 40;
			
			//we should create some particle effect here on the beat
			//Forest: placer the part_particles_create code here
		}
		
		
		//Within the beats requiring palyer input
		if (total_beats >= start_beat) && (total_beats <= end_beat){
			instance_create_layer(x, y, "Instances", oInputSignal);
			
			if ds_exists(LevelGrid, ds_type_grid){
				
				//Check to make sure that total beats isn't higher than the grid height
				if (yy < level_grid_height){
			
					//loop through the grid in the csv file and check for values
					for (var xx = 0; xx < level_grid_width; xx++){
				
						//if the value is 1 we need to spawn an enemy
						if (LevelGrid[# xx, yy] == "1"){
						
							//On create, give initial effects
							with instance_create_layer(x,-32, "Instances", oParEnemy) {
				
								//ds_grid_value_x()
								x = enemyGrid[xx];
								rotation = 359;
								scale = 2;
								target_y = y + 64;
			
							}
							
						}
						else with instance_create_layer(x,-32, "Instances", oEnemyFollower) {
				
							//ds_grid_value_x()
							x = enemyGrid[xx];
							rotation = 359;
							scale = 2;
							target_y = y + 64;
			
						}
					}
				}
			}
			//default to random placement if their is no grid or csv load error
			else {
				with instance_create_layer(x,-32, "Instances", oParEnemy) {		
					//ds_grid_value_x()
					x = enemyGrid[irandom_range(0,11)];
					rotation = 359;
					scale = 2;
					target_y = y + 64;
				}
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
			rotation = choose(-359, 359);
			scale = 0.8;
			player_scale = 1.4;
		}
		
		with(oPlayerControllerRight){
			rot = choose(-359, 359);
			rotation = choose(-359, 359);
			scale = 0.8;
			player_scale = 1.4;
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

//max_beats_on_track, could probably move this code to the cleanup event
if (total_beats >= max_beats_on_track) {
	total_beats = 0;
	global.level_counter++;
	
	oController.next_level = true;
	audio_group_unload(audio_group_music);
	
	if ds_exists(ds_type_grid, LevelGrid) {
		ds_grid_destroy(LevelGrid);
	}
	
	instance_destroy();
	
}

#endregion
