/// @description


//Calculate Delta Time
global.seconds_passed = delta_time/1000000;

if keyboard_check_pressed(ord("M")){
	audio_set_master_gain(0,0);
	show_question("Mute?");
}

if keyboard_check_pressed(vk_space) && (global.level_counter == 0){
	if !instance_exists(oMusic){
		instance_create_layer(50, 50, "Instances", oMusic)
			//level_track = audio_table[# audiotable.track, level.one];
	}
}

if (instance_exists(oMusic)){
	last_max_beats_on_track = oMusic.max_beats_on_track;
}


if (next_level) {
	global.songPlaying = false;
	
	// Move to next level when user presses spacebar
	if keyboard_check_pressed(vk_space) {
		
		// Reset counters
		global.accuracy_counter[r.bad] = 0
		global.accuracy_counter[r.good] = 0
		global.accuracy_counter[r.great] = 0
		global.accuracy_counter[r.perfect] = 0
		
		// Disable next_level status
		next_level = !next_level;
		audio_play_sound(sMenuSelect,1,false);
		
		// Create new oMusic
		if !instance_exists(oMusic) {
			instance_create_layer(x,y, "Instances", oMusic);
		}
	}
}

if (fail_screen) {
	global.songPlaying = false;
	
	if keyboard_check_pressed(vk_space) {
		
		fail_screen = !fail_screen;

		var centre_x = room_width/2;
		var centre_y = room_height/2;

		if !instance_exists(oPlayerControllerLeft) {
			instance_create_layer(x_grid[3], centre_y, "Instances", oPlayerControllerLeft)
		}
		
		if !instance_exists(oPlayerControllerRight) {
			instance_create_layer(x_grid[8], centre_y, "Instances", oPlayerControllerRight)
		}
		
		// Reset counters
		global.accuracy_counter[r.bad] = 0
		global.accuracy_counter[r.good] = 0
		global.accuracy_counter[r.great] = 0
		global.accuracy_counter[r.perfect] = 0
		
		// Disable next_level status
		audio_play_sound(sMenuSelect,1,false);
		
		// Create new oMusic
		if !instance_exists(oMusic) {
			instance_create_layer(x,y, "Instances", oMusic);
		}
	}
}

//End the level if the players are destroyed
if (global.songPlaying && !instance_exists(oParPlayerController)) {
	instance_destroy(oMusic);
	fail_screen = true;
}