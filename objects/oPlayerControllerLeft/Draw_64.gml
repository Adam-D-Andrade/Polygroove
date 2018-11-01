/// @description Draw UI here to prevent Variability

var gui_h = display_get_gui_height();

var yoffset = 0.10 * gui_h;
var xoffset = 0.05 * display_get_gui_width();

for (var i = 0; i < current_lives; i++){
	draw_sprite_ext(sprPlayer, 0, xoffset+(25*i), gui_h - yoffset, scale, scale, rot, c_white, 1);
}
