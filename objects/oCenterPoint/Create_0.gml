/// @description

center_x = room_width/2;
center_y = room_height/2;

scale = 1;

dist_to_point = point_distance(center_x, -32, center_x, y);
line_scale = dist_to_point/sprite_get_width(sprLightLaser);
orig_line_width = 0.5;
line_width = 0.5;

init_polygon_vars(360, 20, 20, 0);

distance_rating[r.bad] = 100;
distance_rating[r.good] = 100;
distance_rating[r.great] = 50;
distance_rating[r.perfect] = 25;


