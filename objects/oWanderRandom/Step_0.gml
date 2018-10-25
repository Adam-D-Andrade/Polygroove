/// @description



//targetDir = targetDir mod 360;
//dir = abs(dir mod 360);

if (dir != targetDir) {
	dir = lerp(dir, targetDir, 0.2);
}

if (scale != 1) {
	scale = lerp(scale, 1, 0.1);
}


y = lerp(y, target_y, 0.1);
x = lerp(x, oController.x_grid[grid_pos], 0.1);


