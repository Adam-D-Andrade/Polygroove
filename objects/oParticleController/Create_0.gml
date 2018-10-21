// Purple/blue rectangles (viridis approved)
ptPurpleRectangles = part_type_create();
part_type_shape(ptPurpleRectangles,pt_shape_square);
part_type_size(ptPurpleRectangles,0.10,0.16,0,0);
part_type_scale(ptPurpleRectangles,2.82,2.05);
part_type_color3(ptPurpleRectangles,-12451788,7946540,8089632);
part_type_alpha3(ptPurpleRectangles,0.50,0.60,0.02);
part_type_speed(ptPurpleRectangles,3.43,7.38,0.02,0);
part_type_direction(ptPurpleRectangles,0,359,1,0);
part_type_gravity(ptPurpleRectangles,0,270);
part_type_orientation(ptPurpleRectangles,0,0,0,0,1);
part_type_blend(ptPurpleRectangles,1);
part_type_life(ptPurpleRectangles,59,85);


// Green squares (maybe for a dying square enemy) (viridis approved)
ptGreenSquares = part_type_create();
part_type_shape(ptGreenSquares,pt_shape_square);
part_type_size(ptGreenSquares,0.10,0.22,0,0);
part_type_scale(ptGreenSquares,3.01,2.82);
part_type_color3(ptGreenSquares,4933186,4050544,4325428);
part_type_alpha3(ptGreenSquares,0.76,0.58,0.00);
part_type_speed(ptGreenSquares,2.96,4.39,-0.07,0);
part_type_direction(ptGreenSquares,0,359,1,0);
part_type_orientation(ptGreenSquares,0,0,0,0,1);
part_type_blend(ptGreenSquares,1);
part_type_life(ptGreenSquares,65,102);


// Yellow lines of light (looks awesome) (viridis approved)
ptYellowLines = part_type_create();
part_type_shape(ptYellowLines,pt_shape_line);
part_type_size(ptYellowLines,0.30,0.90,0,0);
part_type_scale(ptYellowLines,2.05,1);
part_type_color3(ptYellowLines,4194368,2024956,4194368);
part_type_alpha3(ptYellowLines,0.70,0.72,0.03);
part_type_speed(ptYellowLines,1.96,3.48,0.02,0);
part_type_direction(ptYellowLines,0,359,0,0);
part_type_orientation(ptYellowLines,0,0,0,0,1);
part_type_blend(ptYellowLines,1);
part_type_life(ptYellowLines,48,56);


// Wiggly tight hoops (viridis approved)
ptWiggleHoops = part_type_create();
part_type_shape(ptWiggleHoops,pt_shape_ring);
part_type_size(ptWiggleHoops,0.11,0.41,0,0);
part_type_scale(ptWiggleHoops,3.02,3.09);
part_type_color3(ptWiggleHoops,4194368,4050544,2024956);
part_type_alpha3(ptWiggleHoops,0.92,0.74,0.07);
part_type_speed(ptWiggleHoops,2.36,3.18,-0.13,0.50);
part_type_direction(ptWiggleHoops,0,359,0,0);
part_type_orientation(ptWiggleHoops,0,0,0,0,1);
part_type_blend(ptWiggleHoops,1);
part_type_life(ptWiggleHoops,36,57);


// Tiny star-like dots (they're white)
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


