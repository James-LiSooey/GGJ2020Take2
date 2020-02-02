/// @description Insert description here
// You can write your code in this editor

if(!global.dead) {
	if( (abs(gamepad_axis_value(0, gp_axislv)) + abs(gamepad_axis_value(0, gp_axislh)) )>.2){
		haxis = gamepad_axis_value(0, gp_axislh);
		vaxis = gamepad_axis_value(0, gp_axislv);
	}
	else{
		vaxis = 0
		haxis = 0;
	}

	if(haxis > 0) {
		image_xscale = -1;
		facingLeft = true;
		//image_angle = point_direction(0,0, haxis, vaxis);
		direction = point_direction(0, 0, haxis, vaxis);
		speed = point_distance(0 ,0, haxis, vaxis) * 15;
	} else if(haxis < 0) {
		image_xscale = 1;
		facingLeft = false;
		//image_angle = point_direction(0,0, haxis, vaxis)-180;
		direction = point_direction(0, 0, haxis, vaxis);
		speed = point_distance(0 ,0, haxis, vaxis) * 15;
	} else {
		direction = point_direction(0, 0, lastHaxis, lastVaxis);
		speed = 0;
		if (!facingLeft) {
			image_xscale = 1;	
		} else {
			image_xscale = -1;
		}
	}
} else {
	direction = 270;
	speed = 5;
}
	


