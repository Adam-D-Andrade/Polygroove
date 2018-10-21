// Play sound
audio_play_sound(sBullet,1,false);

// Speed
vspeed = -10;

// Polygon attributes
points = 4;  // square
radius = 10;
thickness = 10;  // Thickness must be >= radius to have a solid polygon
rotation = 0; 

// Pulsing stuff
growing_status = true;
pulse_magnitude = 10;



// Lifespan
alarm[0] = 200;