/// @description

dist = oCenterPoint.y - y;

//global.accuracy[r.bad] = (dist)
//global.accuracy[r.good] = (global.target_value >= -0.4) && (global.target_value <= 0.4)
//global.accuracy[r.great] = (global.target_value >= -0.15) && (global.target_value <= 0.15)
//global.accuracy[r.perfect] = (global.target_value >= -0.05) && (global.target_value <= 0.05)


var y_speed_this_frame = (distance_to_input_buffer/global.beatsPerSecond) * global.seconds_passed;


y += y_speed_this_frame;


