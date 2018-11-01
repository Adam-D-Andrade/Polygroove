/// @description
var yy = 30
draw_set_font(fntDebug);
draw_text(2, yy + 5, "Width: " + string(display_get_width()));
draw_text(2, yy + 15, "Height: " + string(display_get_height()));
draw_text(2, yy + 25, "Ideal Width: " + string(ideal_width));
draw_text(2, yy + 35, "Ideal Height: " + string(ideal_height));
draw_text(2, yy + 45, "Aspect Ratio: " + string(aspect_ratio));
draw_text(2, yy + 55, "Camera Width: " + string(camera_get_view_width(view_camera[0])));
draw_text(2, yy + 65, "Camera Height: " + string(camera_get_view_height(view_camera[0])));
draw_text(2, yy + 75, "Gui Width: " + string(display_get_gui_width()));
draw_text(2, yy + 85, "Gui Height: " + string(display_get_gui_height()));
draw_text(2, yy + 95, "Center Width: " + string(camera_get_view_width(view_camera[0])/2));
draw_text(2, yy + 105, "Center Height: " + string(camera_get_view_height(view_camera[0])/2));


if instance_exists(oCamera){
	draw_text(2, 300, "Intensity: " + string(oCamera.intensity));
}