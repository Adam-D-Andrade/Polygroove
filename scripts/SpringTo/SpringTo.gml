/// @description SpringTo(targetvalue, baseValue)
/// @arg targetvalue
/// @arg baseValue


var _targetValue	= argument[0];
var _baseValue		= argument[1];

var displacement = (_targetValue - _baseValue);
springSpeed += (springTension * displacement) - (springDampening * springSpeed);

return springSpeed;


