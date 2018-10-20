/// @description Draw Time Values
    


draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_set_font(fntXolonium);
draw_text((camera_get_view_width(view_camera[0])/2), 25, string_hash_to_newline(LevelTimeString)) // Draw time with a colon as a separator


draw_text((camera_get_view_width(view_camera[0])/2), 45, string_hash_to_newline(BestTimeString)); 


//draw_text(view_wview[0],y+ 20,totalminutes) // Draw time with a colon as a separator
    



