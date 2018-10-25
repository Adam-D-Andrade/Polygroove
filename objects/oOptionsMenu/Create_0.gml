// Menu options
menu[0] = "Music Volume";
menu[1] = "SFX Volume";
menu[2] = "Back";

// Text spacing
space = 64;  // Spacing between menu items
mpos = 0;  // Tracker for menu position

// Attributes for triangle that indicates menu item selection
points = 3;  
radius = 10;
thickness = 5; 
rotation = 0; 

// Pulsing stuff
growing_status = true;
pulse_magnitude = 0.25;

// Volume slider setup
slider_min_length = 300;
slider_max_length = 600;
slider_height = 8;
slider_length_total = slider_max_length - slider_min_length;

// Music/SFX default gain values
music_group_default_gain = 0.75;
sfx_group_default_gain = 0.75;
music_group_current_gain = music_group_default_gain;
sfx_group_current_gain = sfx_group_default_gain;

// Volume slider length
music_group_slider_value = slider_length_total * music_group_current_gain;
sfx_group_slider_value = slider_length_total * sfx_group_current_gain;
