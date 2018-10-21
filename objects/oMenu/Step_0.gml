/// @description Insert description here
// You can write your code in this editor

radius_array = pulse_polygon_value(radius, 8, 13, growing_status, pulse_magnitude);
radius = radius_array[0];
growing_status = radius_array[1];


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

var push;
push = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_space),0);

if (push == 1) {
	audio_stop_all();
	audio_play_sound(sMenuSelect,1,false);
	call_menu();
}