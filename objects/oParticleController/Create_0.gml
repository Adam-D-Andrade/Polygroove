// Particle system
global.particleSystem = part_system_create();
part_system_depth(global.particleSystem,0);



//I don't think this used?
global.ptClearEnemies = part_type_create();
part_type_shape(global.ptClearEnemies,pt_shape_square);
part_type_size(global.ptClearEnemies,0.10,0.20,0,0);
part_type_scale(global.ptClearEnemies,1,1);
part_type_color1(global.ptClearEnemies,4050544);
part_type_alpha2(global.ptClearEnemies,1,0);
part_type_speed(global.ptClearEnemies,0.70,1,0,0.50);
part_type_direction(global.ptClearEnemies,0,180,0,0);
part_type_gravity(global.ptClearEnemies,0.10,270);
part_type_orientation(global.ptClearEnemies,0,0,0,0,1);
part_type_blend(global.ptClearEnemies,0);
part_type_life(global.ptClearEnemies,30,60);


// Losing a life (green squares)
global.ptLoseLife = part_type_create();
part_type_shape(global.ptLoseLife,pt_shape_square);
part_type_size(global.ptLoseLife,0.10,0.20,0,0);
part_type_scale(global.ptLoseLife,1,1);
part_type_color1(global.ptLoseLife,4050544);
part_type_alpha2(global.ptLoseLife,1,0);
part_type_speed(global.ptLoseLife,1.5,6,0,0.50);
part_type_direction(global.ptLoseLife,0,180,0,0);
part_type_gravity(global.ptLoseLife,0.10,270);
part_type_orientation(global.ptLoseLife,0,0,0,0,1);
part_type_blend(global.ptLoseLife,0);
part_type_life(global.ptLoseLife,30,60);


// Projectile particle (for shooting enemies?)
global.ptProjectile = part_type_create();
part_type_shape(global.ptProjectile,pt_shape_disk);
part_type_size(global.ptProjectile,0.10,0.11,0,0);
part_type_scale(global.ptProjectile,3.0,0.4);
part_type_color3(global.ptProjectile,4050544,8089632,8235142);
part_type_alpha3(global.ptProjectile,0.71,0.75,0.05);
part_type_speed(global.ptProjectile,2.01,4.55,-0.03,0);
part_type_direction(global.ptProjectile,0,359,1,0);
part_type_gravity(global.ptProjectile,1,270);
part_type_orientation(global.ptProjectile,0,0,0,0,1);
part_type_blend(global.ptProjectile,1);
part_type_life(global.ptProjectile,5,20);



// Purple/blue rectangles
global.ptPurpleRectangles = part_type_create();
part_type_shape(global.ptPurpleRectangles,pt_shape_square);
part_type_size(global.ptPurpleRectangles,0.10,0.16,0,0);
part_type_scale(global.ptPurpleRectangles,2.82,2.05);
part_type_color3(global.ptPurpleRectangles,-12451788,7946540,8089632);
part_type_alpha3(global.ptPurpleRectangles,0.50,0.60,0.02);
part_type_speed(global.ptPurpleRectangles,3.43,7.38,0.02,0);
part_type_direction(global.ptPurpleRectangles,0,359,1,0);
part_type_gravity(global.ptPurpleRectangles,0,270);
part_type_orientation(global.ptPurpleRectangles,0,0,0,0,1);
part_type_blend(global.ptPurpleRectangles,1);
part_type_life(global.ptPurpleRectangles,59,85);


// Green squares (maybe for a dying square enemy)
global.ptGreenSquares = part_type_create();
part_type_shape(global.ptGreenSquares,pt_shape_square);
part_type_size(global.ptGreenSquares,0.10,0.22,0,0);
part_type_scale(global.ptGreenSquares,3.01,2.82);
part_type_color3(global.ptGreenSquares,4933186,4050544,4325428);
part_type_alpha3(global.ptGreenSquares,0.76,0.58,0.00);
part_type_speed(global.ptGreenSquares,2.96,4.39,-0.07,0);
part_type_direction(global.ptGreenSquares,0,359,1,0);
part_type_orientation(global.ptGreenSquares,0,0,0,0,1);
part_type_blend(global.ptGreenSquares,1);
part_type_life(global.ptGreenSquares,65,102);


// Yellow lines of light (looks awesome)
global.ptYellowLines = part_type_create();
part_type_shape(global.ptYellowLines,pt_shape_line);
part_type_size(global.ptYellowLines,0.30,0.90,0,0);
part_type_scale(global.ptYellowLines,2.05,1);
part_type_color3(global.ptYellowLines,4194368,2024956,4194368);
part_type_alpha3(global.ptYellowLines,0.70,0.72,0.03);
part_type_speed(global.ptYellowLines,1.96,3.48,0.02,0);
part_type_direction(global.ptYellowLines,0,359,0,0);
part_type_orientation(global.ptYellowLines,0,0,0,0,1);
part_type_blend(global.ptYellowLines,1);
part_type_life(global.ptYellowLines,48,56);


// Wiggly tight hoops
global.ptWiggleHoops = part_type_create();
part_type_shape(global.ptWiggleHoops,pt_shape_ring);
part_type_size(global.ptWiggleHoops,0.11,0.41,0,0);
part_type_scale(global.ptWiggleHoops,3.02,3.09);
part_type_color3(global.ptWiggleHoops,4194368,4050544,2024956);
part_type_alpha3(global.ptWiggleHoops,0.92,0.74,0.07);
part_type_speed(global.ptWiggleHoops,2.36,3.18,-0.13,0.50);
part_type_direction(global.ptWiggleHoops,0,359,0,0);
part_type_orientation(global.ptWiggleHoops,0,0,0,0,1);
part_type_blend(global.ptWiggleHoops,1);
part_type_life(global.ptWiggleHoops,36,57);


// Tiny star-like dots (they're white)
global.ptStarDots = part_type_create();
part_type_shape(global.ptStarDots,pt_shape_pixel);
part_type_size(global.ptStarDots,0.30,0.30,0,0);
part_type_scale(global.ptStarDots,3.00,1.25);
part_type_color3(global.ptStarDots,11780266,9471641,8748662);
part_type_alpha3(global.ptStarDots,0.91,0.77,0.01);
part_type_speed(global.ptStarDots,3.66,4.16,0.09,0);
part_type_direction(global.ptStarDots,0,359,-1,0);
part_type_gravity(global.ptStarDots,0,270);
part_type_orientation(global.ptStarDots,0,0,0,0,0);
part_type_blend(global.ptStarDots,1);
part_type_life(global.ptStarDots,52,69);

//Spark-like effect when triangle enemies die
global.ptEnemyDestroy = part_type_create();
part_type_shape(global.ptEnemyDestroy,pt_shape_sphere);
part_type_size(global.ptEnemyDestroy,0.41,0.51,0,0);
part_type_scale(global.ptEnemyDestroy,1,0.20);
part_type_color1(global.ptEnemyDestroy,8454143);
part_type_alpha3(global.ptEnemyDestroy,1,0.44,0.00);
part_type_speed(global.ptEnemyDestroy,2.18,5.94,0.17,0);
part_type_direction(global.ptEnemyDestroy,0,359,0,0);
part_type_gravity(global.ptEnemyDestroy,0,270);
part_type_orientation(global.ptEnemyDestroy,0,0,0,0,1);
part_type_blend(global.ptEnemyDestroy,1);
part_type_life(global.ptEnemyDestroy,44,60);

// Green Bars
global.ptPerfectInputBars = part_type_create();
part_type_shape(global.ptPerfectInputBars,pt_shape_line);
part_type_size(global.ptPerfectInputBars,0.10,0.76,0,0);
part_type_scale(global.ptPerfectInputBars,2.06,1);
part_type_color3(global.ptPerfectInputBars,65280,65280,8454016);
part_type_alpha3(global.ptPerfectInputBars,0.90,0.68,0.20);
part_type_speed(global.ptPerfectInputBars,3.19,3.48,0,0);
part_type_direction(global.ptPerfectInputBars,0,359,0,0);
part_type_gravity(global.ptPerfectInputBars,0,270);
part_type_orientation(global.ptPerfectInputBars,0,0,0,0,1);
part_type_blend(global.ptPerfectInputBars,1);
part_type_life(global.ptPerfectInputBars,38,56);


