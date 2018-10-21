/// @description

if !instance_exists(oText){
	with (instance_create_layer(oCenterPoint.x, oCenterPoint.y, "Instances", oText)){
		text = oMusic.test;
	}
}
