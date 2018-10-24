/// @description Delete grids from memeory and make sure to reset beats

total_beats = 0;
audio_group_unload(audio_group_music);
	
if ds_exists(ds_type_grid, LevelGrid) {
	ds_grid_destroy(LevelGrid);
}