/// @description

audio_group_load(audio_group_music);

global.target_value = 0;

start_time = 0;
time_tracking = false;
time = 0;

beats = 0;

bpm = round(global.beatsPerSecond * 1000) //- current_time;
test = 0;

text[r.bad] = "Bad";
text[r.good] = "Good";
text[r.great] = "Great";
text[r.perfect] = "Perfect";

//Control the spawning of instances using the bpm, current system will spawn about 3 every time
bpmTrigger = true;