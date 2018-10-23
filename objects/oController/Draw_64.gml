// Draw user stats if we're in next_level limbo
if next_level{
	center_width = room_width / 2
	center_height = room_height / 2
	
	// Calculate grade
	level_grade = calculate_level_grade(last_max_beats_on_track,
										global.accuracy_counter[r.perfect],
										global.accuracy_counter[r.great],
										global.accuracy_counter[r.good],
										global.accuracy_counter[r.bad]
										);
	
	draw_set_font(fntScoresGrade);
	draw_text(center_width-300,center_height - 90, "Grade: " + level_grade);
	
	
	draw_set_font(fntScores);
	draw_text(center_width-300,center_height + 0 ,"Perfect: "+ string(global.accuracy_counter[r.perfect]));
	draw_text(center_width-300,center_height + 30 ,"Great: "+ string(global.accuracy_counter[r.great]));
	draw_text(center_width-300,center_height + 60 ,"Good: "+ string(global.accuracy_counter[r.good]));
	draw_text(center_width-300,center_height + 90 ,"Bad: " + string(global.accuracy_counter[r.bad]));
}