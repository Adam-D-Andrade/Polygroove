/// @description Set up Display
//////////////////////////////////////////////////////////////////
/*
Things to change and add to
restrict ideal width and height with aspect ratios 
restrict ideal width and height by strict sizing
allow players to select resolution and aspect ratio from a list
allow player to adjust application surface scale
save and load the players previous settings
*/
///////////////////////////////////////////////////////////////////

ideal_width = 0;
ideal_height = 900;

//The higher the zoom the bigger the window
zoom = 1;
max_zoom = 0;
display_width = display_get_width();
display_height = display_get_height();

//Zooming in and out
global.view_zoom       = 1;
global.view_max_zoom   = 10;

aspect_ratio = display_width/display_height; //higher the number the wider the display(1.777 on my big 1600x900 laptop)
//aspect_ratio = clamp(aspect_ratio, ) use to limit supported aspect ratios

ideal_width = round(ideal_height*aspect_ratio);

//Use the bottom line if you want the width to be more important than height, this should allow you
// to expand the height based on the display monitor rather than the width
//ideal_height = round(ideal_width / aspect_ratio);

//Perfect Pixel Scaling
if(display_width mod ideal_width != 0)
{
  var d = round(display_width/ideal_width);
  ideal_width = display_width/d;
}
if(display_height mod ideal_height != 0)
{
  var d = round(display_height/ideal_height);
  ideal_height = display_height/d;
}

//Check for odd numbers
if(ideal_width & 1) {ideal_width++;}
if(ideal_height & 1) {ideal_height++;}
    
//Calculate Max Zoom
max_zoom = floor(display_width/ideal_width);  

surface_resize(application_surface,ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);

alarm[0]=1; 

camera = camera_create();

global.view_x = 0; 
global.view_y = 0;
global.view_w = ideal_width;
global.view_h = ideal_height;

//display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

room_goto_next();


