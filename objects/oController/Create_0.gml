/// @description
global.custom_debug_mode = false;

global.level_counter = 0;

// This should only be true while a song/level is active
global.songPlaying = true;

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

InitAudioTable();

next_level = false;

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

var rm_height = room_height;
var rm_width = room_width;

var grid_length = rm_width div GRID_SIZE;
var grid_height = rm_height div GRID_SIZE;

//Not sure if we need a full on grid data structure as everything can't be snapped to this due to delta time
//level_grid = ds_grid_create()

var centre_x = rm_width/2;
var centre_y = rm_height/2;


global.PlayerLives = 5;

if !instance_exists(oPlayerControllerLeft) {
	instance_create_layer(centre_x-100, centre_y, "Instances", oPlayerControllerLeft)
}
if !instance_exists(oPlayerControllerRight) {
	instance_create_layer(centre_x+100, centre_y, "Instances", oPlayerControllerRight)
}
if !instance_exists(oCenterPoint) {
	instance_create_layer(centre_x, centre_y + 200, "Instances", oCenterPoint); 
}

InitEnemyPosGrid();

