/// @description


//Calculate Delta Time
global.seconds_passed = delta_time/1000000;


if keyboard_check_pressed(vk_space) && (global.level_counter == 0){
	if !instance_exists(oMusic){
		instance_create_layer(50, 50, "Instances", oMusic)
			//level_track = audio_table[# audiotable.track, level.one];
	}
}


if (next_level) {
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
