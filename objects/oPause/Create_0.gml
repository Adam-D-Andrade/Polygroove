/// @description
/// @description

//initialize variables

screen = -1;

if (global.Pause = false) global.Pause = true;

camWidth = camera_get_view_width(view_camera[0]) ;
camHeight = camera_get_view_height(view_camera[0]);

StartPause = current_time;
EndPause	= 0;

//Inactivate particle systems
part_system_automatic_update(global.pSystemForeground,	false);
part_system_automatic_update(global.pSystemMiddleForeground, false);
part_system_automatic_update(global.pSystemMiddleBackground, false);
part_system_automatic_update(global.pSystemBackground, false);
    
	
//create a surface of the sruface just before pausing
if !(surface_exists(screen)){
	screen = surface_create(camWidth, camHeight);
	surface_copy(screen, 0, 0, application_surface); 
}
    
	
//Inactivate all instances
instance_deactivate_all(true);

//instance_activate_object(oTimer);

//instance_create_layer(0, 0, "Instances", oMenu);

