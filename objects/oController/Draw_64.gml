/// @description Insert description here
// You can write your code in this editor


// Draw user stats if we're in next_level limbo
if next_level{
	center_width = room_width / 2
	center_height = room_height / 2
	
	draw_set_font(fntScoresGrade);
	draw_text(center_width-240,center_height - 90, "Grade: A+ (lol this is hardcoded)")
	
	draw_set_font(fntScores);
	draw_text(center_width-240,center_height + 0 ,"Perfect: "+ string(global.accuracy_counter[r.perfect]));
	draw_text(center_width-220,center_height + 30 ,"Great: "+ string(global.accuracy_counter[r.great]));
	draw_text(center_width-200,center_height + 60 ,"Good: "+ string(global.accuracy_counter[r.good]));
	draw_text(center_width-180,center_height + 90 ,"Bad: " + string(global.accuracy_counter[r.bad]));
}