// Particles
part_particles_create(global.particleSystem, x, y, global.ptProjectile,5);

// Rotate
rotation_array = pulse_polygon_value(rotation, 0, 360, growing_status, pulse_magnitude);
rotation = rotation_array[0];
growing_status = rotation_array[1];


