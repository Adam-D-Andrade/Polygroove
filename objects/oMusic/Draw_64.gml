// Draw progress bar at bottom of screen

top_left_x = room_width / 4;
top_left_y = room_height - 44;
bottom_right_x = room_width - (room_width / 4);
bottom_right_y = room_height - 22;

// Outline for rectangle
draw_rectangle(top_left_x, top_left_y, bottom_right_x, bottom_right_y, true);

// Fill for rectangle (width aka bottom_right_x needs to change dynamically with song)
draw_set_color(global.colorGreen);

progress_bar_real_width = bottom_right_x - top_left_x;
if (total_beats > 0){
	percent_complete_track = total_beats / max_beats_on_track;
}
else {
	percent_complete_track = 0;
}
normalized_max_beats = progress_bar_real_width;
normalized_current_beats = progress_bar_real_width * percent_complete_track;
current_bar_progress = top_left_x + normalized_current_beats;


// Slight tweaks to bar to make it fit nicer
top_left_y_bar = top_left_y + 1; 
top_left_x_bar = top_left_x + 1;
draw_rectangle(top_left_x_bar, top_left_y_bar, current_bar_progress, bottom_right_y-1, false);


// Draw start of song
normalized_bar_start = bar_start / max_bars_on_track
normalized_bar_end = bar_end / max_bars_on_track
progress_bar_half_height = (bottom_right_y - top_left_y)/2

bar_start_progress = top_left_x + (progress_bar_real_width*normalized_bar_start);
draw_set_color(global.colorYellow);
draw_rectangle(bar_start_progress+2, top_left_y_bar, bar_start_progress, bottom_right_y-1, false);

// Draw rest period of song
draw_set_color(global.colorTeal);
bar_end_progress = top_left_x + (progress_bar_real_width*normalized_bar_end)
draw_rectangle(bar_end_progress, top_left_y_bar, bar_end_progress+2, bottom_right_y-1, false);

if global.custom_debug_mode{
	
	// Draw percentage complete
	text_x = bottom_right_x + 10;
	text_y = top_left_y + 10;
	draw_set_font(fntDebug);
	draw_set_color(c_white);
	draw_text(text_x,text_y, string(percent_complete_track*100) + "%");


	// Debug text
	draw_set_font(fntDebug);
	draw_text(20,20, "progress_bar_real_width = " + string(progress_bar_real_width));
	draw_text(20,30, "total_beats = " + string(total_beats));
	draw_text(20,40, "percent_complete_track = " + string(percent_complete_track));
	draw_text(20,50, "normalized_max_beats = " + string(normalized_max_beats));
	draw_text(20,60, "normalized_current_beats = " + string(normalized_current_beats));
	draw_text(20,70, "current_bar_progress = " + string(current_bar_progress));
}