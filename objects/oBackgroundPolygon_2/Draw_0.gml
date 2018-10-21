/// @description Draw polygon
// You can write your code in this editor


gpu_set_blendmode(bm_add);

DrawPolygon(x,y,points,radius,rotation,thickness,global.colorBackgroundPurple);

gpu_set_blendmode(bm_normal);