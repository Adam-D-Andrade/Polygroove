/// @description


//Calculate Delta Time
global.seconds_passed = delta_time/1000000;


if keyboard_check_pressed(vk_space){
	if !instance_exists(oMusic){
		instance_create_layer(50, 50, "Instances", oMusic)
			//level_track = audio_table[# audiotable.track, level.one];
		
	}
}

if (next_level){
	next_level = !next_level;
	alarm[0] = 30;
}

