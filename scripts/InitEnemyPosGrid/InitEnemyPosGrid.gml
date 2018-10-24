var half_w = (room_width/2);

var left_offset = 100;//player start x
var right_offset = 100;

//Enemy grid relative to the left of the room, just took values and plopped them in here in order
enemyGrid[0] = half_w - left_offset - 64*5;
enemyGrid[1] = half_w - left_offset - 64*4;
enemyGrid[2] = half_w - left_offset - 64*3;
enemyGrid[3] = half_w - left_offset - 64*2;
enemyGrid[4] = half_w - left_offset - 64*1;
enemyGrid[5] = half_w - left_offset;
enemyGrid[6] = half_w + right_offset;
enemyGrid[7] = half_w + right_offset + 64*1;
enemyGrid[8] = half_w + right_offset + 64*2;
enemyGrid[9] = half_w + right_offset + 64*3;
enemyGrid[10] = half_w + right_offset + 64*4;
enemyGrid[11] = half_w + right_offset + 64*5;