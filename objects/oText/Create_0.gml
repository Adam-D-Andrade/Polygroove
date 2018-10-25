/// @description

alarm[0] = 40;

direction = 0;
speed = 6;


text = "";

rating[r.bad] = "Bad";
rating[r.good] = "Good";
rating[r.great] = "Great";
rating[r.perfect] = "Perfect";

emit_particles = true;
if (instance_exists(oCenterPoint) && (text = "Perfect")){
	part_particles_create(global.particleSystem, oCenterPoint.x, oCenterPoint.y, global.ptPerfectInputBars, 50);
}
