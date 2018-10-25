/// @function add_separator(integer, separation, seperator);
/// @description Insert seperators in a number, from right to left, every separation spaces
/// @param {real} The input value
/// @param {real} Number of digits grouped between commas
/// @param {string} The seperator to use between digits


//NEEDS TESTING
var str = string(argument0);
var setp = argument1;
var separator = argument2;
for (var i = string_length(str) - (sep - 1); i > 1; i -= sep) {
  str = string_insert(separator, str, i);
}
return str;