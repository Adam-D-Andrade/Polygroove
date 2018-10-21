/// @description

var centre_x = room_width/2;
var centre_y = room_height/2;

if( global.custom_debug_mode){
	draw_line_width(centre_x, 0, centre_x, room_height,5);

	draw_circle(x, y, distance_rating[r.bad], true);
	draw_circle(x, y, distance_rating[r.good], true);
	draw_circle(x, y, distance_rating[r.great], true);
	draw_circle(x, y, distance_rating[r.perfect], true);
}
draw_self();