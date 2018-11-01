/// @description

//debug to check dsgrid from csv file


if (time_tracking){
	time += (delta_time*0.000001);
	//beats += (delta_time*0.001) mod (60/global.beatsPerMinute);  // This was hardcoded to 130 previ
}

global.target_value = time mod (global.beatsPerSecond);

test = (current_time mod bpm)/bpm; //value from 0 461 --> divided by 461, value now 0 - 1

#region Trigger on Beat Stuff
if (global.target_value >= -0.04) and (global.target_value <= 0.04){
	
	//BPM trigger allows us to only trigger this once otherwise this will occur many times.
	if (bpmTrigger){
		total_beats++;
		
		yy = total_beats - start_beat;
				
		//Within the beats requiring palyer input
		if (total_beats >= start_beat) && (total_beats <= end_beat){
			global.songPlaying = true;
			
			instance_create_layer(global.center_x, y, "Instances", oInputSignal);
			
			with(oCenterPoint) {
				scale = 3; 
				line_width = 4;
				part_particles_create(global.particleSystem, x, y, global.ptYellowLines,20);
				part_particles_create(global.particleSystem, x, y, global.ptCircleWave, 25)
				//we should create some particle effect here on the beat
				//Forest: placer the part_particles_create code here
			}
			
			
			if ds_exists(LevelGrid, ds_type_grid){
				
				level_grid_width = ds_grid_width(LevelGrid);
				level_grid_height = ds_grid_height(LevelGrid);
				
				//Check to make sure that total beats isn't higher than the grid height
				if (yy < level_grid_height){
			
					//loop through the grid in the csv file and check for values
					for (var xx = 0; xx < level_grid_width; xx++){
						
						switch LevelGrid[# xx, yy]{
							case string(enemy.basic):
								//On create, give initial effects
								with instance_create_layer(oController.x_grid[xx],0, "Instances", oParEnemy) {
									rotation = 359;
									scale = 2;
									target_y = 0;			
								}
							break;
							case "2":
								with instance_create_layer(oController.x_grid[xx],0, "Instances", oWanderRandom) {							
									scale = 2;
									target_y = y + 64;								
								}
							break;
							case "3":
								with instance_create_layer(oController.x_grid[xx],0, "Instances", oEnemyFollower) {	
									rotation = 359;
									scale = 2;
									target_y = y + 64;
								}
							break;
							case "4":
								with instance_create_layer(oController.x_grid[xx], -32, "Instances", oShooter){
									scale = 2;
									y = y + 100;
									action_on_beat = !action_on_beat;
								}
							break;
							default:
						}
					}
				}
			}
			// Default to random placement if there is no grid loaded or any csv load error
			else {
				with instance_create_layer(x,-32, "Instances", oParEnemy) {		
					//ds_grid_value_x()
					x = oController.x_grid[irandom_range(0,11)];
					rotation = 359;
					scale = 2;
					target_y =0;
				}
			}
			
			// On beat reapply effects
			with (oParEnemy) {
				move = true;
				rotation = choose(-359,359);
				scale = 2;
			}
			
			// WanderRandom Enemy currently moves down and turns either left or right, switching directions
			// if at the end of the grid for either side
			#region WanderRandom logic
			with (oWanderRandom) {
				if (dir != targetDir) dir = targetDir;
				if (x != oController.x_grid[grid_pos]) x = oController.x_grid[grid_pos];
				
				//Could maybe optimize this mess? maybe? I don't fucking know.
				if (changeDir) {
					if (targetDir mod 270 == 0){
						if (grid_pos == 0 || grid_pos == 6 ){
							targetDir = choose(targetDir, targetDir + 90);
						}
						else if (grid_pos == 5 || grid_pos == 11){
							targetDir = choose(targetDir, targetDir - 90);
						}
						else {
							targetDir = choose(dir + 90, dir - 90);
						}
					}
					else {
						targetDir = 270;
					}
				}
				
				if (!changeDir){
					switch (dir mod 360) {
						case 0: 
							grid_pos += 1;
							target_y = y;
						break;
						case 90: //this should never happen but in case it does
							target_x = x;
							target_y = y - 64;							
						break;
						case 180:
							grid_pos -= 1;
							target_y = y;
						break;
						case 270:
							target_x = x;
							target_y = y + 64;
						break;
					}
				}
				
				changeDir = !changeDir;
			}
			#endregion
			
			with (oShooter){
				action_on_beat = !action_on_beat;
				rotation = choose(-359,359);
				//scale = new_scale;
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
	if instance_exists(oParEnemy){
		instance_destroy(oParEnemy);
	}
	global.songPlaying = false;
}

//max_beats_on_track, go to next level, further processing done on cleanup event
if (total_beats >= max_beats_on_track) {
	
	global.level_counter++;
	oController.next_level = true;
	
	instance_destroy();
}

#endregion
