/// @description


move_dir[0] = keyboard_check_pressed(ord("J")) || keyboard_check_pressed(vk_left);
move_dir[1] = keyboard_check_pressed(ord("L")) || keyboard_check_pressed(vk_right);
move_dir[2] = keyboard_check_pressed(ord("I")) || keyboard_check_pressed(vk_up);
move_dir[3] = keyboard_check_pressed(ord("K")) || keyboard_check_pressed(vk_down);

//MOVE LEFT
if (!moving){
	
	#region Move Left
	if (move_dir[LC_key.left]){
	
		moving = true;
	
		if (global.accuracy[r.perfect]) {
			target_x = (x - x_limit < room_width/2) ? x : x - x_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
		else if global.accuracy[r.great] {
			target_x = (x - x_limit < room_width/2) ? x : x - x_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
		else if global.accuracy[r.good]{
			target_x = (x - x_limit < room_width/2) ? x : x - x_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
		else {
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}			
			target_x = x;
		}
	}
	#endregion

	#region Move Right
	if (move_dir[LC_key.right]){
	
		moving = true;
	
		if (global.accuracy[r.perfect]) {
			target_x = (x + x_limit > room_width) ? x : x + x_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
		else if global.accuracy[r.great] {
			target_x = (x + x_limit > room_width) ? x : x + x_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
		else if global.accuracy[r.good]{
			target_x = (x + x_limit > room_width) ? x : x + x_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
		else {
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}			
			target_x = x;
		}
	}
	#endregion

	#region Moving Up
	if (move_dir[LC_key.up]){
	
		moving = true;
	
		if (global.accuracy[r.perfect]) {
			target_y = (y - y_limit < 0) ? y : y - y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
		else if global.accuracy[r.great] {
			target_y = (y - y_limit < 0) ? y : y - y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
		else if global.accuracy[r.good]{
			target_y = (y - y_limit < 0) ? y : y - y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
		else {
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}
			target_y = y;
		}
	}
	#endregion
	
	#region Move Down
	if (move_dir[LC_key.down]){
		moving = true;
	
		if (global.accuracy[r.perfect]) {
			target_y = (y + y_limit > room_height) ? y : y + y_movement; 
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
		else if global.accuracy[r.great] {
			target_y = (y + y_limit > room_height) ? y : y + y_movement; 
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
		else if global.accuracy[r.good]{
			target_y = (y + y_limit > room_height) ? y : y + y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
		else {
			target_y = y;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}
		}
	}
	#endregion
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

//Current Life Variables for Drawing
if (scale != 0.4) {
	scale = Approach(scale, 0.4, 0.01);
}

if (rot != 0) {
	rot = lerp(rot, 0, 0.05);
}
