/// @description Initialize some variables not inherited by parent

event_inherited();

action_on_beat = false;

growing = false;
grow_count = 0;
grow_rate = 1;
max_grow_count = 8;

new_scale = 2;
grid_pos = get_grid_position();

shoot = false;
base_line_width = 5;
line_width = 5;


init_polygon_vars(6, 20, 10, rotation);