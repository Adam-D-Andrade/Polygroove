/// @description

if audio_group_is_loaded(audio_group_music)
{
	audio_play_sound(mTrack, 100, false);
	
	start_time = current_time;
	time_tracking = !time_tracking;

}
