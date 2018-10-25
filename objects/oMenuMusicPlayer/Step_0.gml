if instance_number(oMenuMusicPlayer) > 1 {
	instance_destroy();
}

if room != rmMenu and room != rmOptions {
	instance_destroy();	
}

// Menu music
if !audio_is_playing(mMenuMusic){
	audio_play_sound(mMenuMusic,1,true);
}