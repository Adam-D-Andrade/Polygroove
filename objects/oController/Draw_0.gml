/// @description


if (global.custom_debug_mode) {
	if instance_exists(oParEnemy){
		for (var i = 0; i < array_length_1d(oParEnemy.enemyGrid); i++){
			draw_line(oParEnemy.enemyGrid[i], 0, oParEnemy.enemyGrid[i], room_height);
		
		}
	}
}