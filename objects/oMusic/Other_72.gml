/// @description

if audio_group_is_loaded(audio_group_music)
{
	
	if (global.level_counter == 0) audio_play_sound(mDebugTrack_130bpm, 100, false);
	if (global.level_counter == 1) audio_play_sound(mTrack5_115bpm, 100, false);
	if (global.level_counter == 2) audio_play_sound(mTrack1_130bpm, 100, false);
	if (global.level_counter == 3) audio_play_sound(mTrack2_130bpm, 100, false);
	if (global.level_counter == 4) audio_play_sound(mTrack3_135bpm, 100, false);
	
	
	
	time_tracking = !time_tracking;
}
