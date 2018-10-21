/// @description

moving = false;
flag = false;

target_x = x;
target_y = y;

x_movement = 64;
y_movement = 64;

center_proximity_limit = 64;
x_limit = 120;
y_limit = 140;

enum LC_key {
	left, 
	right,
	up,
	down
}

 
//Life Drawing Variables
rot = 0;
scale = 0.4;
current_lives = global.PlayerLives;