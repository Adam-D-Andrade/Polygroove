/// @description


move_dir[0] = keyboard_check_pressed(ord("J")) || keyboard_check_pressed(vk_left);
move_dir[1] = keyboard_check_pressed(ord("L")) || keyboard_check_pressed(vk_right);
move_dir[2] = keyboard_check_pressed(ord("I")) || keyboard_check_pressed(vk_up);
move_dir[3] = keyboard_check_pressed(ord("K")) || keyboard_check_pressed(vk_down);


if !moving{
	for (var i = 0; i < array_length_1d(move_dir) -1; i++ ){
		if (move_dir[i]){
			moving = true;
		}
	}
}

if (moving){
	if (move_dir[RC_key.left]){
		target_x = x - 100;
	}
	if (move_dir[RC_key.right]){
		target_x = x + 100;
	}
	if (move_dir[RC_key.up]){
		target_y = y - 100;
	}
	if (move_dir[RC_key.down]){
		target_y = y + 100;
	}
}


x = lerp(x, target_x, 0.5);
y = lerp(y, target_y, 0.5);
