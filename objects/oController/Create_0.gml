/// @description
global.custom_debug_mode = false;

// Colours
global.colorPurple = make_color_rgb(52,0,66);
global.colorBlue = make_color_rgb(44,65,121);
global.colorTeal = make_color_rgb(32,112,123);
global.colorGreen = make_color_rgb(112,206,61);
global.colorYellow = make_color_rgb(252,229,30);


global.beatsPerSecond = 60/140;

//enum to get values from array on how close we were!
enum r {
	bad,
	good,
	great,
	perfect
}

//Initialize the array
global.accuracy = [];
global.accuracy[r.bad] = 0;
global.accuracy[r.good] = 0;
global.accuracy[r.great] = 0;
global.accuracy[r.perfect] = 0;


var rm_height = room_height;
var rm_width = room_width;

var grid_length = rm_width div GRID_SIZE;
var grid_height = rm_height div GRID_SIZE;

//Not sure if we need a full on grid data structure as everything can't be snapped to this due to delta time
//level_grid = ds_grid_create()

var centre_x = rm_width/2;
var centre_y = rm_height/2;

if !instance_exists(oPlayerControllerLeft) {
	instance_create_layer(centre_x-100, centre_y, "Instances", oPlayerControllerLeft)
}
if !instance_exists(oPlayerControllerRight) {
	instance_create_layer(centre_x+100, centre_y, "Instances", oPlayerControllerRight)
}
if !instance_exists(oCenterPoint) {
	instance_create_layer(centre_x, centre_y + 200, "Instances", oCenterPoint); 
}
