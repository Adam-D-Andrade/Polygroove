/// @description

if (action_on_beat){
	
	action_on_beat = !action_on_beat;
	
	if (shoot) { 
		shoot = !shoot; 
		grow_count = 0;
		growing = !growing;
		new_scale = 2;
	}
	
	//if we aren't growing, choose to see if we are
	if (!growing) {
		growing = choose(growing, !growing);
		
		if (grid_pos == 0 || grid_pos == 6 ){
			grid_pos++;
		}
		else if (grid_pos == 5 || grid_pos == 11){
			grid_pos--;
		}
		else {
			grid_pos = choose(grid_pos++, grid_pos--);
		}
	}		
	else { 
		if (grow_count < max_grow_count){
			audio_play_sound(sCharging,1,false);
			grow_count++;
			new_scale += grow_rate;
			scale = new_scale;
		}
		else {
			shoot = true;
			line_width *= 10;
			if !audio_is_playing(sLaserBeam){
				audio_play_sound(sLaserBeam,1,false);
			}
		}
	}
}

if (scale != 1) { 
	scale = lerp(scale, 1, 0.1); 
}

if (rotation != 0) { 
	rotation = lerp(rotation, 0, 0.05); 
}

if (line_width != base_line_width) {
	line_width = lerp(line_width, base_line_width, 0.1);
}

x = lerp(x, oController.x_grid[grid_pos], 0.1);