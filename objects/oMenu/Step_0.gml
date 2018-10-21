/// @description Insert description here
// You can write your code in this editor

var move = 0;
move -= max(keyboard_check_pressed(vk_up), 
			keyboard_check_pressed(ord("W")),
			0);

move += max(keyboard_check_pressed(vk_down), 
			keyboard_check_pressed(ord("S")),
			0);
			
if (move != 0){
	mpos += move;
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
	call_menu();	
}