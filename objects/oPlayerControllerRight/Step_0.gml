/// @description


move_dir[0] = keyboard_check_pressed(ord("J")) || keyboard_check_pressed(vk_left);
move_dir[1] = keyboard_check_pressed(ord("L")) || keyboard_check_pressed(vk_right);
move_dir[2] = keyboard_check_pressed(ord("I")) || keyboard_check_pressed(vk_up);
move_dir[3] = keyboard_check_pressed(ord("K")) || keyboard_check_pressed(vk_down);

//MOVE LEFT
if (move_dir[LC_key.left]){
	if (global.accuracy[r.perfect]) {
		if (!moving){
			target_x = (x - x_limit < room_width/2) ? x : x - x_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
	}
	else if global.accuracy[r.great] {
		if (!moving){
			target_x = (x - x_limit < room_width/2) ? x : x - x_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
	}
	else if global.accuracy[r.good]{
		if (!moving){
			target_x = (x - x_limit < room_width/2) ? x : x - x_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
	}
	else {
		with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
			text = "Bad!";
		}			
		target_x = x;
		moving = true;
	}
}

//MOVE RIGHT
if (move_dir[LC_key.right]){
	if (global.accuracy[r.perfect]) {
		if (!moving){
			target_x = (x + x_limit > room_width) ? x : x + x_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
	}
	else if global.accuracy[r.great] {
		if (!moving){
			target_x = (x + x_limit > room_width) ? x : x + x_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
	}
	else if global.accuracy[r.good]{
		if (!moving){
			target_x = (x + x_limit > room_width) ? x : x + x_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
	}
	else {
		if (!moving){
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}			
			target_x = x;
			moving = true;
		}
	}
}

//MOVE UP
if (move_dir[LC_key.up]){
	if (global.accuracy[r.perfect]) {
		if (!moving){
			target_y = (y - y_limit < 0) ? y : y - y_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
	}
	else if global.accuracy[r.great] {
		if (!moving){
			target_y = (y - y_limit < 0) ? y : y - y_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
	}
	else if global.accuracy[r.good]{
		if (!moving){
			target_y = (y - y_limit < 0) ? y : y - y_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
	}
	else {
		if (!moving){
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}
			target_y = y;
			moving = true;
		}
	}
}
	
//MOVE DOWN
if (move_dir[LC_key.down]){
	if (global.accuracy[r.perfect]) {
		if (!moving){
			target_y = (y + y_limit > room_height) ? y : y + y_movement; 
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
	}
	else if global.accuracy[r.great] {
		if (!moving){
			target_y = (y + y_limit > room_height) ? y : y + y_movement; 
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
	}
	else if global.accuracy[r.good]{
		if (!moving){
			target_y = (y + y_limit > room_height) ? y : y + y_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
	}
	else {
		if (!moving){
			target_y = y;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}
		}
	}
}


//if (moving){

//	if (move_dir[RC_key.right]){
		
//	}
//	if (move_dir[RC_key.up]){
//		target_y = (y - y_limit < 0) ? y : y - y_movement;
//	}
//	if (move_dir[RC_key.down]){
//		target_y = (y + y_limit > room_height) ? y : y + y_movement; 
//	}
//}

x = lerp(x, target_x, 0.5);
y = lerp(y, target_y, 0.5);

if (flag == false){
	flag = true;
	alarm[0] = 20;
}

