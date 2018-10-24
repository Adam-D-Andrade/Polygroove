/// @description LooseLife(playerinstance)
/// @param playerinstance

// Particles

with (argument0){
	
	if (current_lives > 0){
		part_particles_create(global.particleSystem, lives_x_pos, lives_y_pos, global.ptLoseLife,50);
	}
	// Play sound
	audio_play_sound(sndDamage, 1, false);

	current_lives--;
}