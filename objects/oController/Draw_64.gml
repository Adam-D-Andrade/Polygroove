// Draw user stats if we're in next_level limbo
if next_level{
	var center_width = display_get_gui_width() / 2;
	var center_height = display_get_gui_height() / 2;
	
	// Calculate grade
	level_grade = calculate_level_grade(last_max_beats_on_track,
										global.accuracy_counter[r.perfect],
										global.accuracy_counter[r.great],
										global.accuracy_counter[r.good],
										global.accuracy_counter[r.bad]
										);
	
	draw_set_font(fntScoresGrade);
	draw_text(center_width-300,center_height - 90, "Grade: " + level_grade[0]);
	draw_text(center_width-300,center_height - 140, "Points: " + string(level_grade[1]));
	
	draw_set_font(fntScores);
	draw_text(center_width-300,center_height + 0 ,"Perfect: "+ string(global.accuracy_counter[r.perfect]));
	draw_text(center_width-300,center_height + 30 ,"Great: "+ string(global.accuracy_counter[r.great]));
	draw_text(center_width-300,center_height + 60 ,"Good: "+ string(global.accuracy_counter[r.good]));
	draw_text(center_width-300,center_height + 90 ,"Bad: " + string(global.accuracy_counter[r.bad]));
}

if fail_screen {
	
	var center_width = display_get_gui_width() / 2;
	var center_height = display_get_gui_height() / 2;
	
	draw_set_halign(fa_center);
	draw_set_font(fntXolonium);
	draw_text_ext_transformed_color(center_width, 
								wave(center_height -40, center_height + 40, 4, 0),
								"Try Again?", 
								20, 
								500,
								wave(1, 2, 10, 0),
								wave(1, 2, 10, 0),
								0, 
								global.colorGreen,
								global.colorGreen,
								global.colorGreen,
								global.colorGreen,
								1);
	draw_set_halign(fa_left);
								
}

draw_text(2, 225, "global Center Width: " + string(global.center_x));