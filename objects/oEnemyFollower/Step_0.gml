/// @description

event_inherited();

if (following != noone) {
	x = following.x;
}
else {
	following = (x < (room_width/2) ? oPlayerControllerRight : oPlayerControllerLeft);
}
