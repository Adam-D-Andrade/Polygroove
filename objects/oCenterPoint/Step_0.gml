/// @description



if (radius != 20) radius = Approach(radius, 20, 0.8);
if (line_width != 1) line_width = Approach(line_width, 1, 0.8);


part_particles_create(global.particleSystem, x, y, global.ptYellowLines,1);

var	next_beat = instance_nearest(x, y, oInputSignal);

if (next_beat != noone) {
	var dist = distance_to_object(next_beat) - sprite_get_yoffset(oCenterPoint.sprite_index);
	
	global.accuracy[r.bad] = (dist > distance_rating[r.bad])
	global.accuracy[r.good] = (dist <= distance_rating[r.good])
	global.accuracy[r.great] =(dist < distance_rating[r.great])
	global.accuracy[r.perfect] = (dist < distance_rating[r.perfect])
	
}