/// @description

move_dir[0] = keyboard_check_pressed(ord("A"));
move_dir[1] = keyboard_check_pressed(ord("D"));
move_dir[2] = keyboard_check_pressed(ord("W"));
move_dir[3] = keyboard_check_pressed(ord("S"));
shooting = keyboard_check_pressed(vk_space);

if ((!moving) and global.songPlaying){
	#region Moving Left
	if (move_dir[LC_key.left]){
		
		moving = true;	
		
		if (global.accuracy[r.perfect]) {		
			global.accuracy_counter[r.perfect] += 1;
			target_x = ( x - x_limit < 0) ? x : x - x_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}	
		}
		else if global.accuracy[r.great] {
			global.accuracy_counter[r.great] += 1;
			target_x = ( x - x_limit < 0) ? x : x - x_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}	
		}
		else if global.accuracy[r.good]{		
			global.accuracy_counter[r.good] += 1;
			target_x = ( x - x_limit < 0) ? x : x - x_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}		
		}
		else {
			global.accuracy_counter[r.bad] += 1;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}			
			target_x = x;
		}
	}
	#endregion
	#region Moving Right
	else if (move_dir[LC_key.right]){
		
		moving = true;
		
		if (global.accuracy[r.perfect]) {
			global.accuracy_counter[r.perfect] += 1;
			target_x =( x + x_limit > room_width/2) ? x : x + x_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
		else if global.accuracy[r.great] {
			global.accuracy_counter[r.great] += 1;
			target_x =( x + x_limit > room_width/2) ? x : x + x_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
		else if global.accuracy[r.good]{
			global.accuracy_counter[r.good] += 1;
			target_x =( x + x_limit > room_width/2) ? x : x + x_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
		else {
			global.accuracy_counter[r.bad] += 1;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}			
			target_x = x;
		}
	}
	#endregion
	#region Moving Up
	else if (move_dir[LC_key.up]){
		
		moving = true;
		
		if (global.accuracy[r.perfect]) {
			global.accuracy_counter[r.perfect] += 1;
			target_y = (y - y_limit < 0) ? y : y - y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
		else if global.accuracy[r.great] {
			global.accuracy_counter[r.great] += 1;
			target_y = (y - y_limit < 0) ? y : y - y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
		else if global.accuracy[r.good]{	
			global.accuracy_counter[r.good] += 1;
			target_y = (y - y_limit < 0) ? y : y - y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}		
		}
		else {
			global.accuracy_counter[r.bad] += 1;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}
			target_y = y;
		}
	}
	#endregion
	#region Moving Down 
	else if (move_dir[LC_key.down]){
		
		moving = true;
		
		if (global.accuracy[r.perfect]) {
			global.accuracy_counter[r.perfect] += 1;
			target_y = (y + y_limit > room_height) ? y :  y + y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Perfect!";
			}
		}
		else if global.accuracy[r.great] {
			global.accuracy_counter[r.great] += 1;
			target_y = (y + y_limit > room_height) ? y :  y + y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Great!";
			}
		}
		else if global.accuracy[r.good]{
			global.accuracy_counter[r.good] += 1;
			target_y = (y + y_limit > room_height) ? y :  y + y_movement;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Good!";
			}
		}
		else {
			target_y = y;
			global.accuracy_counter[r.bad] += 1;
			with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
				text = "Bad!";
			}
		}
	}
	#endregion 
	//else {
	//	#region Missed key press
	
	//	//no key was pressed
	//	with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
	//		text = "Bad!";
	//	}
	//	#endregion
	//}
	
}

//if (shooting){
//	instance_create_layer(x, y, "Instances", oBullet);
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
	rot = lerp(rot, 0, 0.05);//Approach(rot, 0, 2);
}

if (player_scale != 1) {
	player_scale = lerp(player_scale, 1, 0.1);
}

if (rotation != 45) {
	rotation = lerp(rotation, 45, 0.1);
}