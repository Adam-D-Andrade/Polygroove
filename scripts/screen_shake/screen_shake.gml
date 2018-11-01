/// @description screen_shake(xrange, yrange, anglerange, intensity, ease)
/// @function screen_shake
/// @param xrange
/// @param yrange
/// @param anglerange
/// @param intensity
/// @param ease

/*
    Usage: ScreenShake(argument0, argument1, argument2, argument3, ease)
    
    Make the screen shake in different ways
    
    argument0   = range of x values to jump between
    argument1   = range of y values to jump between
    argument2   = range of angles to jump between
    argument3   = intensity of the shake (multiplies the ranges and lerps to 0)
    argument4   = ease/length of the shake (higher value, longer ease out of the shake)

*/


with(id)
{
    xrange = argument0;
    yrange = argument1;
    anglerange = argument2;
    intensity = argument3;
    ease = argument4;
}
