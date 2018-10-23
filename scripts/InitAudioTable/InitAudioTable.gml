audio_table = ds_grid_create(5, 5);

// Debug level
audio_table[# audiotable.track, level.debug] = audio_get_name(mDebugTrack_130bpm);
audio_table[# audiotable.bpm, level.debug] = 130;
audio_table[# audiotable.bars, level.debug] = 4;
audio_table[# audiotable.barStart, level.debug] = 1;
audio_table[# audiotable.barEnd, level.debug] = 3;


// Level 1
audio_table[# audiotable.track, level.one] = audio_get_name(mTrack1_130bpm);
audio_table[# audiotable.bpm, level.one] = 115;
audio_table[# audiotable.bars, level.one] = 57;
audio_table[# audiotable.barStart, level.one] = 4;
audio_table[# audiotable.barEnd, level.one] = 54;

// Level 2
audio_table[# audiotable.track, level.two] = audio_get_name(mTrack1_130bpm);
audio_table[# audiotable.bpm, level.two] = 130;
audio_table[# audiotable.bars, level.two] = 46;
audio_table[# audiotable.barStart, level.two] = 0;
audio_table[# audiotable.barEnd, level.two] = 40;

// Level 3
audio_table[# audiotable.track, level.three] = audio_get_name(mTrack2_130bpm);
audio_table[# audiotable.bpm, level.three] = 130;
audio_table[# audiotable.bars, level.three] = 57;
audio_table[# audiotable.barStart, level.three] = 8;
audio_table[# audiotable.barEnd, level.three] = 56;

// Level 4
audio_table[# audiotable.track, level.four] = audio_get_name(mTrack3_135bpm);
audio_table[# audiotable.bpm, level.four] = 135;
audio_table[# audiotable.bars, level.four] = 62;
audio_table[# audiotable.barStart, level.four] = 12;
audio_table[# audiotable.barEnd, level.four] = 60;