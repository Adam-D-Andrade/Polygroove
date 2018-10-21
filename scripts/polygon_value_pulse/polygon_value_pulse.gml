/// @description polygon_value_pulse(min_val, max_val, current_val)
/// @function polygon_value_pulse
/// @param minRadius
/// @param maxRadius
/// @param radius
/// @description Linearly move between two values from your current value

var _minValue		= argument0;  // minimum desired value
var _maxValue		= argument1;  // maximum desired value
var _currentValue	= argument2;  // Current value
var _magnitude		= 1;

if (_currentValue < _maxValue) {
	_currentValue += _magnitude;	
}
else {
	_currentValue -= _magnitude;	
}

return _currentValue;