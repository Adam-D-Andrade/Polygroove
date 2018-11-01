
x = lerp(x, xstart, 0.1);
y = lerp(y, ystart, 0.1);

///Screen Shake
if (intensity != 0) {
	intensity += (0 - intensity) / ease
	camera_set_view_angle(view_camera[0], random_range(-anglerange, anglerange) * intensity)
	x += random_range(-xrange, xrange) * intensity;
	y += random_range(-yrange, yrange) * intensity;    
}



