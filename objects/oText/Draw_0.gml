/// @description

draw_set_halign(fa_center);
draw_set_font(fntXolonium);
switch text {
	case "Bad":
		draw_text_ext_transformed_color(x, y, text, 1, 500, 1,1, 0, global.colorBlue, 
										global.colorBlue, global.colorBLue, global.colorBlue, 1);
	break;
	case "Good":
		draw_text_ext_transformed_color(x, y, text, 1, 500, 1,1, 0, global.colorTeal, 
										global.colorTeal, global.colorTeal, global.colorTeal, 1);
	break;
	case "Great":
		draw_text_ext_transformed_color(x, y, text, 1, 500, 1,1, 0, global.colorYellow, 
										global.colorYellow, global.colorYellow, global.colorYellow, 1);
	break;
	case "Perfect":
		draw_text_ext_transformed_color(x, y, text, 1, 500, 1,1, 0, global.colorGreen, 
										global.colorGreen, global.colorGreen, global.colorGreen, 1);
	break;
}

draw_set_halign(fa_left);


