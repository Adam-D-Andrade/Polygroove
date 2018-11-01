/// @description
show_debug_overlay(true);
global.custom_debug_mode = false;

global.level_counter = 0;

// This should only be true while a song/level is active
global.songPlaying = false;

// Should be the same as oMusic.max_beats_on_track - updated in step event
last_max_beats_on_track = 0;

enum audiotable{
	track,
	bpm,
	bars,
	barStart,
	barEnd
}

enum level {
	debug,
	one,
	two,
	three,
	four
}

//Enum for refencing the enemies
enum enemy {
	none,//0
	basic,
	wander,
	follower,
	shooter
	
}

init_audio_table();

init_xpos_grid();

next_level = false;
fail_screen = false;

//enum to get values from array on how close we were!
enum r {
	bad,
	good,
	great,
	perfect
}

//Initialize the array
global.accuracy = [];
global.accuracy[r.bad] = false;
global.accuracy[r.good] = false;
global.accuracy[r.great] = false;
global.accuracy[r.perfect] = false;

global.accuracy_counter = [];
global.accuracy_counter[r.bad] = 0;
global.accuracy_counter[r.good] = 0;
global.accuracy_counter[r.great] = 0;
global.accuracy_counter[r.perfect] = 0;


global.center_x = camera_get_view_width(view_camera[0])/2;
global.center_y = camera_get_view_height(view_camera[0])/2;

//Will use the center point beat object for spacing, currently I am thinking about 75% down the size of the view
var yoffset = camera_get_view_height(view_camera[0]) * 0.75;

global.PlayerLives = 5;

if !instance_exists(oCenterPoint) {
	instance_create_layer(global.center_x, yoffset, "Instances", oCenterPoint); 
}

if !instance_exists(oCamera) {
	instance_create_layer(global.center_x, global.center_y, "Instances", oCamera); 
}


if !instance_exists(oPlayerControllerLeft) {
	instance_create_layer(x_grid[3], global.center_y, "Instances", oPlayerControllerLeft)
}
if !instance_exists(oPlayerControllerRight) {
	instance_create_layer(x_grid[8], global.center_y, "Instances", oPlayerControllerRight)
}




