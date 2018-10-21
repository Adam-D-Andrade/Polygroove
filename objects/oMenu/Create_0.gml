/// @description Insert description here
// You can write your code in this editor

menu[0] = "Start";
menu[1] = "Quit";

space = 64;  // Spacing between menu items
mpos = 0;  // Tracker for menu position


points = 3;  // Set this to at least 32 for a circle
radius = 10;
thickness = 5;  // Thickness must be >= radius to have a solid polygon
rotation = 0; 

// Pulsing stuff
growing_status = true;
pulse_magnitude = 0.25;