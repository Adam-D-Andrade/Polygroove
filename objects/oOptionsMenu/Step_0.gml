// Pulse triangle
radius_array = pulse_polygon_value(radius, 8, 13, growing_status, pulse_magnitude);
radius = radius_array[0];
growing_status = radius_array[1];

// Movement along menu
var move = 0;
move -= max(keyboard_check_pressed(vk_up), 
			keyboard_check_pressed(ord("W")),
			0);

move += max(keyboard_check_pressed(vk_down), 
			keyboard_check_pressed(ord("S")),
			0);
			
if (move != 0){
	mpos += move;
	audio_play_sound(sMenuChangeOption,1,false);
	if (mpos < 0) {
		mpos = array_length_1d(menu) -1;
	}
	if (mpos > array_length_1d(menu) - 1) {
		mpos = 0;
	}
}


// Handle changing of music/sfx volume when respective option is highlighted
if mpos == 0 {
		if keyboard_check(vk_right) {
			if music_group_current_gain <= 0.99 {
				music_group_current_gain += 0.01;	
				music_group_slider_value = slider_length_total * music_group_current_gain;
				audio_group_set_gain(audio_group_music, music_group_current_gain, 100);
				audio_group_set_gain(audio_group_menu_music, music_group_current_gain, 100);
			}
		}
		else if keyboard_check(vk_left) {
			if music_group_current_gain >= 0.01 {
				music_group_current_gain -= 0.01;
				music_group_slider_value = slider_length_total * music_group_current_gain;
				audio_group_set_gain(audio_group_music, music_group_current_gain, 100);
				audio_group_set_gain(audio_group_menu_music, music_group_current_gain, 100);
			}
		}
}
else if mpos == 1 {
		if keyboard_check(vk_right) {
			if sfx_group_current_gain <= 0.99 {
				sfx_group_current_gain += 0.01;	
				sfx_group_slider_value = slider_length_total * sfx_group_current_gain;
				audio_group_set_gain(audio_group_sfx, sfx_group_current_gain, 100);
				audio_group_set_gain(audio_group_menu_sfx, sfx_group_current_gain, 100);
			}
		}
		else if keyboard_check(vk_left) {
			if sfx_group_current_gain >= 0.01 {
				sfx_group_current_gain -= 0.01;
				sfx_group_slider_value = slider_length_total * sfx_group_current_gain;
				audio_group_set_gain(audio_group_sfx, sfx_group_current_gain, 100);
				audio_group_set_gain(audio_group_menu_sfx, sfx_group_current_gain, 100);
			}
		}	
}


// Register user's selection and handle it with call_menu script
var push;
push = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_space),0);

if (push == 1) {
	call_options_menu();
}