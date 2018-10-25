/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fntMenu);
draw_set_color(c_white);


// Menu text + music/sfx volume control outlines
var m;
for (m = 0; m < array_length_1d(menu); m+= 1) {
	draw_text(x + space, y + (m*space), string(menu[m]));
	
	// Music/SFX volume control outlines
	if m <= 1 {
		draw_rectangle(
			x + slider_min_length, 
			y + slider_height + (m*space), 
			x + slider_max_length, 
			y - slider_height + (m*space), 
			true
			);
	}
}


var m;
for (m = 0; m < array_length_1d(menu); m+= 1) {
	// Music/SFX volume control green bars
	// Length of bar should be equal to current audio_group gain
	draw_set_color(global.colorGreen);
	if m == 0 {
		draw_rectangle(
			x + slider_min_length + 1, 
			y + slider_height -1 + (m*space), 
			x + slider_min_length + music_group_slider_value, 
			y - slider_height + 1 + (m*space), 
			false
			);
		}
	else if m == 1 {
		draw_rectangle(
			x + slider_min_length + 1, 
			y + slider_height -1 + (m*space), 
			x + slider_min_length + sfx_group_slider_value, 
			y - slider_height + 1 + (m*space), 
			false
			);
		}
	
}


// Fill for rectangle (width aka bottom_right_x needs to change dynamically with song)



// SFX volume control
