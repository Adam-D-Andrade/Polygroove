/// @description

move_dir[0] = keyboard_check_pressed(ord("A"));
move_dir[1] = keyboard_check_pressed(ord("D"));
move_dir[2] = keyboard_check_pressed(ord("W"));
move_dir[3] = keyboard_check_pressed(ord("S"));
shooting = keyboard_check_pressed(vk_space);

if (!moving){
	#region Moving Left
	if (move_dir[LC_key.left]){
		
		moving = true;	
		
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
	#endregion
	
	#region Moving Right
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
	#endregion
	
	#region Moving Up
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
	#endregion

	#region Moving Down 
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
	#endregion 
}

if (shooting){
	instance_create_layer(x, y, "Instances", oBullet);
}

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
