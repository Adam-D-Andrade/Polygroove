/// @description
global.custom_debug_mode = false;

global.beatsPerMinute = 115;
global.beatsPerSecond = 60/global.beatsPerMinute;


enum audiotable{
	track,
	bpm,
	bars,
	barStart,
	barEnd
}

enum level {
	one,
	two,
	three,
	four
}

audio_table = ds_grid_create(6, 4);

audio_table[# audiotable.track, level.one] = audio_get_name(mTrack5_115bpm);
audio_table[# audiotable.bpm, level.one] = 115;
audio_table[# audiotable.bars, level.one] = 57;
audio_table[# audiotable.barStart, level.one] = 5;
audio_table[# audiotable.barEnd, level.one] = 55;

audio_table[# audiotable.track, level.two] = audio_get_name(mTrack1_130bpm);
audio_table[# audiotable.bpm, level.two] = 130;
audio_table[# audiotable.bars, level.two] = 46;
audio_table[# audiotable.barStart, level.two] = 1;
audio_table[# audiotable.barEnd, level.two] = 41;

audio_table[# audiotable.track, level.three] = audio_get_name(mTrack2_130bpm);
audio_table[# audiotable.bpm, level.three] = 130;
audio_table[# audiotable.bars, level.three] = 57;
audio_table[# audiotable.barStart, level.three] = 9;
audio_table[# audiotable.barEnd, level.three] = 57;

audio_table[# audiotable.track, level.four] = audio_get_name(mTrack3_135bpm);
audio_table[# audiotable.bpm, level.four] = 135;
audio_table[# audiotable.bars, level.four] = 62;
audio_table[# audiotable.barStart, level.four] = 13;
audio_table[# audiotable.barEnd, level.four] = 61;

show_debug_message(audio_table)



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
