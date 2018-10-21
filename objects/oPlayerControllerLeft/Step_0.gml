/// @description

move_dir[0] = keyboard_check_pressed(ord("A"));
move_dir[1] = keyboard_check_pressed(ord("D"));
move_dir[2] = keyboard_check_pressed(ord("W"));
move_dir[3] = keyboard_check_pressed(ord("S"));





if (move_dir[LC_key.left]){
	if (global.accuracy[r.perfect]) {
		target_x = ( x - x_limit < 0) ? x : x - x_movement;
		with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
			text = "Perfect!";
		}
	}
	else if global.accuracy[r.great] {
		target_x = ( x - x_limit < 0) ? x : x - x_movement;
		with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
			text = "Great!";
		}
	}
	else if global.accuracy[r.good]{
		target_x = ( x - x_limit < 0) ? x : x - x_movement;
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
	
if (move_dir[LC_key.right]){
	if (global.accuracy[r.perfect]) {
		target_x =( x + x_limit > room_width/2) ? x : x + x_movement;
		with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
			text = "Perfect!";
		}
	}
	else if global.accuracy[r.great] {
		target_x =( x + x_limit > room_width/2) ? x : x + x_movement;
		with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
			text = "Great!";
		}
	}
	else if global.accuracy[r.good]{
		target_x =( x + x_limit > room_width/2) ? x : x + x_movement;
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
	
if (move_dir[LC_key.up]){
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
	
if (move_dir[LC_key.down]){
	if (global.accuracy[r.perfect]) {
		target_y = (y + y_limit > room_height) ? y :  y + y_movement;
		with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
			text = "Perfect!";
		}
	}
	else if global.accuracy[r.great] {
		target_y = (y + y_limit > room_height) ? y :  y + y_movement;
		with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
			text = "Great!";
		}
	}
	else if global.accuracy[r.good]{
		target_y = (y + y_limit > room_height) ? y :  y + y_movement;
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



x = lerp(x, target_x, 0.5);
y = lerp(y, target_y, 0.5);

