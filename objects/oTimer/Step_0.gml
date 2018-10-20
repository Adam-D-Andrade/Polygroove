/// @description
/// @description Draw the time and calculate values


TimeCount = current_time - global.StartTime - global.PausedTime;


minutes = TimeCount div 60000;
seconds = (TimeCount div 1000) mod 60;
milliseconds = TimeCount mod 1000;
        

/////////////////////////////////////    
if (minutes < 10) 
{
    draw_minutes = string(minutes);
    draw_minutes = string_insert("0",draw_minutes,0);
} 
else 
{
    draw_minutes = string(minutes);
}
        
////////////////////////////////    
if (seconds < 10) 
{
    draw_seconds = string(seconds);
    draw_seconds = string_insert("0",draw_seconds,0);
}
else
{
    draw_seconds = string(seconds);
}
        
///////////////////////////////    
if (milliseconds < 10) 
{
    draw_milliseconds = string(milliseconds);
    draw_milliseconds = string_insert("0",draw_milliseconds,0);
}
else 
{
    draw_milliseconds = string(milliseconds);
}
    
LevelTimeString = string(draw_minutes+" : "+draw_seconds+" : "+draw_milliseconds);

    
	
/* Reset Timer
with (oTimer)
{
    StartTime = current_time ;
    seconds = 0;
    minutes = 0;
    milliseconds = 0;
    draw_milliseconds = "00";
    draw_seconds = "00";
    draw_minutes = "00";  
}
*/

