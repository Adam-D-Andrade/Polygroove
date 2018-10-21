/// @description

audio_group_load(audio_group_music);

beats_per_min = 0;
total_beats = 0;
max_beats_on_track = 0;
start_beat = 0;
end_beat = 0;

global.beatsPerMinute = beats_per_min;
global.beatsPerSecond = 60/beats_per_min;

global.target_value = 0;

start_time = 0;
time_tracking = false;
time = 0;



bpm = round(global.beatsPerSecond * 1000) //- current_time;
test = 0;

text[r.bad] = "Bad";
text[r.good] = "Good";
text[r.great] = "Great";
text[r.perfect] = "Perfect";

//Control the spawning of instances using the bpm, current system will spawn about 3 every time
bpmTrigger = true;


level_track = "";

