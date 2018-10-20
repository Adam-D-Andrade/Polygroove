// Green Cloudy Dust
global.ptGreenClouds = part_type_create();
part_type_shape(global.ptGreenClouds,pt_shape_sphere);
part_type_size(global.ptGreenClouds,0.20,0.50,0,0);
part_type_scale(global.ptGreenClouds,1.28,2.95);
part_type_color3(global.ptGreenClouds,5764558,4227072,4619430);
part_type_alpha3(global.ptGreenClouds,0.69,0.34,0.03);
part_type_speed(global.ptGreenClouds,2.47,3.47,-0.09,0);
part_type_direction(global.ptGreenClouds,0,359,0,0);
part_type_gravity(global.ptGreenClouds,0,270);
part_type_orientation(global.ptGreenClouds,0,0,0,0,1);
part_type_blend(global.ptGreenClouds,1);
part_type_life(global.ptGreenClouds,35,51);

// Fireworks
global.ptFireworks = part_type_create();
part_type_shape(global.ptFireworks,pt_shape_flare);
part_type_size(global.ptFireworks,0.10,0.35,0,0);
part_type_scale(global.ptFireworks,3.57,3.30);
part_type_color3(global.ptFireworks,16711680,33023,255);
part_type_alpha3(global.ptFireworks,0.55,0.45,0.08);
part_type_speed(global.ptFireworks,2.83,6.14,-0.10,0);
part_type_direction(global.ptFireworks,0,359,0,0);
part_type_gravity(global.ptFireworks,0,270);
part_type_orientation(global.ptFireworks,0,0,0,0,0);
part_type_blend(global.ptFireworks,1);
part_type_life(global.ptFireworks,48,81);

// Wiggly Neon Hoops
global.ptNeonHoops = part_type_create();
part_type_shape(global.ptNeonHoops,pt_shape_circle);
part_type_size(global.ptNeonHoops,0.25,0.50,0,0);
part_type_scale(global.ptNeonHoops,2.05,1.93);
part_type_color3(global.ptNeonHoops,16711680,16711935,4227072);
part_type_alpha3(global.ptNeonHoops,0.77,0.45,0.02);
part_type_speed(global.ptNeonHoops,2.76,5.29,-0.10,2);
part_type_direction(global.ptNeonHoops,0,359,-1,0);
part_type_gravity(global.ptNeonHoops,0,270);
part_type_orientation(global.ptNeonHoops,0,0,0,0,1);
part_type_blend(global.ptNeonHoops,1);
part_type_life(global.ptNeonHoops,50,72);

// Tiny star-like dots
global.ptStarDots = part_type_create();
part_type_shape(global.ptStarDots,pt_shape_pixel);
part_type_size(global.ptStarDots,0.10,0.10,0,0);
part_type_scale(global.ptStarDots,3.00,1.25);
part_type_color3(global.ptStarDots,11780266,9471641,8748662);
part_type_alpha3(global.ptStarDots,0.91,0.77,0.01);
part_type_speed(global.ptStarDots,3.66,4.16,0.09,0);
part_type_direction(global.ptStarDots,0,359,-1,0);
part_type_gravity(global.ptStarDots,0,270);
part_type_orientation(global.ptStarDots,0,0,0,0,0);
part_type_blend(global.ptStarDots,1);
part_type_life(global.ptStarDots,52,69);


// Green rectangles
global.ptGreenRectangles = part_type_create();
part_type_shape(global.ptGreenRectangles,pt_shape_line);
part_type_size(global.ptGreenRectangles,0.10,0.69,0,0);
part_type_scale(global.ptGreenRectangles,0.20,2.32);
part_type_color3(global.ptGreenRectangles,9808420,3966237,4993030);
part_type_alpha3(global.ptGreenRectangles,0.62,0.80,0.09);
part_type_speed(global.ptGreenRectangles,1.61,5.51,0.13,0);
part_type_direction(global.ptGreenRectangles,0,359,0,0);
part_type_gravity(global.ptGreenRectangles,0,270);
part_type_orientation(global.ptGreenRectangles,0,0,0,0,1);
part_type_blend(global.ptGreenRectangles,1);
part_type_life(global.ptGreenRectangles,51,63);
