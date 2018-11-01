/// @description

if ((x == oController.x_grid[xgrid_pos]) && (y == target_y)){
	moving = false;
}

move_dir[0] = keyboard_check_pressed(ord("J")) || keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("4"));
move_dir[1] = keyboard_check_pressed(ord("L")) || keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("6"));
move_dir[2] = keyboard_check_pressed(ord("I")) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("8"));
move_dir[3] = keyboard_check_pressed(ord("K")) || keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("5"));

if (!moving && global.songPlaying){
	// Loop through the player input
	for (var i = 0; i < array_length_1d(move_dir); i++){
		if (move_dir[i]){
			moving = true;
			
			// Loop through the ratings, starting with most narrow (perfect)
			// and add to the counter and check the rating
			var rating_on_input = 0;
			for (var rating = r.perfect; rating >= 0; rating--){
				if (global.accuracy[rating]){
					global.accuracy_counter[rating] += 1;
				
					with(instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
						text = id.rating[rating];
						direction = 45;
					}
					rating_on_input = rating; 
					break;
				}
			}
			
			// If the input was bad, player doesn't move, else we move
			if (rating_on_input != r.bad){
				if (i < 2){
					xgrid_pos += (i == 1) ? 1 : -1;	
					break;
				}
				else {
					target_y = (i == 2) ? y - MOVE_DISTANCE : y + MOVE_DISTANCE;
					break;
				}
			}
		}
	}
}


xoffset = 0.05 * display_get_gui_width();
lives_x_pos =  display_get_gui_width() - xoffset - (25 * current_lives);
lives_y_pos = display_get_gui_height() - 0.10 * display_get_gui_height();


var x_max = array_length_1d(oController.x_grid) - 1;
var x_min = array_length_1d(oController.x_grid)/2;


if (xgrid_pos < x_min) xgrid_pos = x_min;
if (xgrid_pos > x_max) xgrid_pos = x_max;


if ((target_y >= bottom_ymax) || (target_y - y_limit < 0)){
	target_y = y;
}

x = lerp(x, oController.x_grid[xgrid_pos], 0.5);
y = lerp(y, target_y, 0.5);

//Current Life Variables for Drawing
if (scale != 0.4) {
	scale = approach(scale, 0.4, 0.01);
}

if (rot != 0) {
	rot = lerp(rot, 0, 0.05);
}

if (player_scale != 1) {
	player_scale = lerp(player_scale, 1, 0.1);
}

if (rotation != 45) {
	rotation = lerp(rotation, 45, 0.1);
}

if (current_lives <= 0){
	instance_destroy();
}