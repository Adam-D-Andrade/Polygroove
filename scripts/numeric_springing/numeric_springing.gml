/// @description numeric_springing(value, velocity, target value, damping ratio, angular frequency, time step);
/// @function numeric_springing
/// @param value
/// @param  velocity
/// @param  target value
/// @param  damping ratio
/// @param  angular frequency
/// @param  time step
//Math from: http://allenchou.net/2015/04/game-math-more-on-numeric-springing/ and http://allenchou.net/2015/04/game-math-precise-control-over-numeric-springing/

//Usage: In Step Event
//var a = numeric_springing(x, hspeed, xx, 0.1, 10, 1);
//var b = numeric_springing(y, vspeed, yy, 0.1, 10, 1);

//x = a[0];
//hspeed = a[1];

//y = b[0];
//vspeed = b[1];



var _ret,                               //Array containing output value and velocity
_x = argument0,                         //Input value
_v = argument1/(room_speed/argument5),  //Input velocity
_x_t = argument2,                       //Target value
_damping = argument3,                   //Damping of the oscillation (0 = no damping, 1 = critically damped)
_ang_freq = 2*pi*argument4,             //Oscillations per second
_t = argument5/room_speed,              //How much of a second each step/use of the script takes (1 = normal time, 2 = twice as fast,..)
_delta_v, _delta_x, _delta;

_delta = (1+2*_t*_damping*_ang_freq)+power(_t,2)*power(_ang_freq,2);
_delta_x = (1+2*_t*_damping*_ang_freq)*_x+_t*_v+power(_t,2)*power(_ang_freq,2)*_x_t;
_delta_v = _v+_t*power(_ang_freq,2)*(_x_t-_x);

_ret[1] = (_delta_v/_delta)/(room_speed/argument5); //Output velocity
_ret[0] = _delta_x/_delta;                          //Output value

return _ret;
