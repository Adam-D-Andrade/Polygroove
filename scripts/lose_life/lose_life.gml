/// @description lose_life(playerinstance, xpos, ypos)
/// @param playerinstance
/// @param xpos
/// @param ypos

// Particles

with (argument0){
	
	if (current_lives > 0){
		part_particles_create(global.particleSystem, argument1, argument2, global.ptLoseLife,50);
	}
	else {
		instance_destroy();
	}
	// Play sound
	audio_play_sound(sDamage1,1,false);

	current_lives--;
}