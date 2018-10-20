/// @description
/// @description

if surface_exists(screen) {surface_free(screen);}
instance_activate_all();


part_system_automatic_update(global.pSystemForeground, true);
part_system_automatic_update(global.pSystemMiddleForeground, true);
part_system_automatic_update(global.pSystemMiddleBackground, true);
part_system_automatic_update(global.pSystemBackground, true);



global.Pause = false;

//grab the current time when the pause is destroyed
EndPause = current_time;

//add the pause time to a global variable when pause is destroyed
global.PausedTime += EndPause - StartPause;
