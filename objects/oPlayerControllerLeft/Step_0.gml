/// @description

move_dir[0] = keyboard_check_pressed(ord("A"));
move_dir[1] = keyboard_check_pressed(ord("D"));
move_dir[2] = keyboard_check_pressed(ord("W"));
move_dir[3] = keyboard_check_pressed(ord("S"));
shooting = keyboard_check_pressed(vk_space);

if (move_dir[LC_key.left]){
	if (global.accuracy[r.perfect]) {
		if (!moving){
			target_x = ( x - x_limit < 0) ? x : x - x_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
			moving = true;
		}
	}
	else if global.accuracy[r.great] {
		if (!moving){
			target_x = ( x - x_limit < 0) ? x : x - x_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
	}
	else if global.accuracy[r.good]{
		if (!moving){
			target_x = ( x - x_limit < 0) ? x : x - x_movement;
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
	}
	else {
		if (!moving){
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}			
			target_x = x;
		}
	}
}
	
if (move_dir[LC_key.right]){
	if (global.accuracy[r.perfect]) {
		if (!moving){
			moving = true;
			target_x =( x + x_limit > room_width/2) ? x : x + x_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
	}
	else if global.accuracy[r.great] {
		if (!moving){
			moving = true;
			target_x =( x + x_limit > room_width/2) ? x : x + x_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
	}
	else if global.accuracy[r.good]{
		if (!moving){
			moving = true;
			target_x =( x + x_limit > room_width/2) ? x : x + x_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
	}
	else {
		if (!moving){
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}			
			target_x = x;
		}
	}
}
	
if (move_dir[LC_key.up]){
	if (global.accuracy[r.perfect]) {
		if (!moving){
			moving = true;
			target_y = (y - y_limit < 0) ? y : y - y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
	}
	else if global.accuracy[r.great] {
		if (!moving){
			moving = true;
			target_y = (y - y_limit < 0) ? y : y - y_movement;
				with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
					text = "Great!";
				}
			}
		}
	else if global.accuracy[r.good]{
		if (!moving){
			moving = true;
			target_y = (y - y_limit < 0) ? y : y - y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
	}
	else {
		if (!moving){
			moving = true;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}
			target_y = y;
		}
	}
}

#region Moving Down 
if (move_dir[LC_key.down]){
	if (global.accuracy[r.perfect]) {
		if (!moving){
			moving = true;
			target_y = (y + y_limit > room_height) ? y :  y + y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
	}
	else if global.accuracy[r.great] {
		if (!moving){
			moving = true;
			target_y = (y + y_limit > room_height) ? y :  y + y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
	}
	else if global.accuracy[r.good]{
		if (!moving){
			moving = true;
			target_y = (y + y_limit > room_height) ? y :  y + y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
	}
	else {
		if (!moving){
			moving = true;
			target_y = y;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}
		}
	}
}
#endregion 


if (shooting){
	instance_create_layer(x, y, "Instances", oBullet);
}

x = lerp(x, target_x, 0.5);
y = lerp(y, target_y, 0.5);

if (flag == false){
	flag = true;
	alarm[0] = 20;
}


