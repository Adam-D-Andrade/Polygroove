/// @description


global.beatsPerSecond = 60/130;


var rm_height = room_height;
var rm_width = room_width;

var grid_length = rm_width div GRID_SIZE;
var grid_height = rm_height div GRID_SIZE;

//Not sure if we need a full on grid data structure as everything can't be snapped to this due to delta time
//level_grid = ds_grid_create()


var centre_x = rm_width/2;
var centre_y = rm_height/2;

if !instance_exists(oPlayerControllerLeft) {
	instance_create_layer(centre_x, centre_y, "Instances", oPlayerControllerLeft)
}
if !instance_exists(oPlayerControllerRight) {
	instance_create_layer(centre_x, centre_y, "Instances", oPlayerControllerRight)
}
