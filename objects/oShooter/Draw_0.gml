/// @description

draw_polygon(x, y, points, radius* scale, rotation, thickness * scale, global.colorBlue);
draw_polygon(x, y, points, (radius-10)* scale, rotation, thickness * scale, global.colorYellow);


if (shoot) {
	draw_line_width(x, y, x, room_height, line_width);
	
	if instance_exists(oParPlayerController){
		var player_instance = oParPlayerController;
		with(collision_line(x-(line_width/2), y, x+(line_width/2), room_height, player_instance, false, true)){
			lose_life(id);
		}
	}
}