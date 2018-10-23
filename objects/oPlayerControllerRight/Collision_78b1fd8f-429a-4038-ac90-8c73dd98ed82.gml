/// @description

with(other) instance_destroy();

// Particles
x_coord = room_width - 50 - (25*(current_lives-1));
y_coord = room_height - 22;

if (current_lives > 0){
	part_particles_create(global.particleSystem, x_coord, y_coord, global.ptLoseLife,50);
}
// Play sound
audio_play_sound(sndDamage, 1, false);

current_lives--;