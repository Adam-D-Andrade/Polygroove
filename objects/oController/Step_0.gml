/// @description


//Calculate Delta Time
global.seconds_passed = delta_time/1000000;


if keyboard_check_pressed(vk_space){
	if !instance_exists(oMusic){
		with(instance_create_layer(50, 50, "Instances", oMusic)){
			//level_track = audio_table[# audiotable.track, level.one];
			beats_per_min = audio_table[# audiotable.bpm, level.one];
			max_beats_on_track = audio_table[# audiotable.bars, level.one] * 4;
			start_beat = audio_table[# audiotable.barStart, level.one] * 4;
			end_beat = audio_table[# audiotable.barEnd, level.one] * 4;
		}
	}
}


