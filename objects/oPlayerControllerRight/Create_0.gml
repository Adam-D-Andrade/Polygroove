/// @description
event_inherited();
moving = false;
flag = false;

xgrid_pos = get_grid_position();
target_x = oController.x_grid[xgrid_pos];
target_y = y;


x_movement = 64;
y_movement = 64;

center_proximity_limit = 64;
x_limit = 120;
y_limit = 140;

enum RC_key {
	left, 
	right,
	up,
	down
}


//Life Drawing Variables
rot = 0;
scale = 0.4;
current_lives = global.PlayerLives;

lives_x_pos = 0;
lives_y_pos = 0;

trail_init();

//Player Drawing Variables
player_scale = 1;
rotation = 45;
init_polygon_vars(4, 27, 27, rotation);
