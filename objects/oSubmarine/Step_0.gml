/// @description Insert description here
// You can write your code in this editor
haxis = gamepad_axis_value(0, gp_axislh);
vaxis = gamepad_axis_value(0, gp_axislv);

x = clamp(x, sprite_width, room_width-150);
y = clamp(y, sprite_height, room_height-100);

if(haxis > 0) {
	image_xscale = -1;
	image_angle = point_direction(0,0, haxis, vaxis);
} else if(haxis < 0) {
	image_xscale = 1;
	image_angle = point_direction(0,0, haxis, vaxis)-180;
}
	
direction = point_direction(0, 0, haxis, vaxis);
speed = point_distance(0 ,0, haxis, vaxis) * 15;

