/// @description DrawPolygon(x,y,points,rad, rot, thick, color)
/// @function DrawPolygon
/// @param x
/// @param y
/// @param points
/// @param rad
/// @param  rot
/// @param  thick
/// @param  color
/// @description Draw a polygon of n number of sdes using a thickness. you can evenr create a solid
    //polygon by using thickness the same as the radius. Radius is the overall size of polygon.
	//Thickness is thickness of outter line.
    
var _centerX    = argument0;
var _centerY    = argument1; 
var _points     = argument2;
var _radius     = argument3;
var _rot        = argument4;
var _thickness  = argument5;
var _color      = argument6;

var _dirIncrement = 360/ _points;

draw_set_color(_color);
draw_primitive_begin(pr_trianglestrip);    

for (var _i = 0; _i <= _points; _i++)
{
    var _drawDir = _rot + _dirIncrement * _i;    

    draw_vertex(_centerX + lengthdir_x(_radius, _drawDir), _centerY + lengthdir_y(_radius, _drawDir));
    draw_vertex(_centerX + lengthdir_x(_radius - _thickness, _drawDir), _centerY + lengthdir_y(_radius - _thickness, _drawDir));      
}
    
draw_primitive_end();
draw_set_color(c_white);



