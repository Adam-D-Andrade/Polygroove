var half_w = camera_get_view_width(view_camera[0])/2;

var left_offset = 100;//player start x
var right_offset = 100;

//Enemy grid relative to the left of the room, just took values and plopped them in here in order
x_grid[0] = half_w - left_offset - 64*6;
x_grid[1] = half_w - left_offset - 64*5;
x_grid[2] = half_w - left_offset - 64*4;
x_grid[3] = half_w - left_offset - 64*3;
x_grid[4] = half_w - left_offset - 64*2;
x_grid[5] = half_w - left_offset - 64*1;
x_grid[6] = half_w - left_offset;
x_grid[7] = half_w + right_offset;
x_grid[8] = half_w + right_offset + 64*1;
x_grid[9] = half_w + right_offset + 64*2;
x_grid[10] = half_w + right_offset + 64*3;
x_grid[11] = half_w + right_offset + 64*4;
x_grid[12] = half_w + right_offset + 64*5;
x_grid[13] = half_w + right_offset + 64*6;