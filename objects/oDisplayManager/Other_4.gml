/// @description Insert description here
// You can write your code in this editor

view_camera[0] = camera;
view_enabled = true;
view_visible[0] = true;


if (room == rmFirst) {
	if !instance_exists(oController) {instance_create_layer(x,y, "Instances", oController)}
}