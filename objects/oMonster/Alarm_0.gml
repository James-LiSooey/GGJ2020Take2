/// @description Insert description here
// You can write your code in this editor
randomize();
direction = random_range(0,360);
	if(direction > 90 && direction < 270) {
		image_xscale = -1;
		image_angle = direction - 180;
	} else {
		image_xscale = 1;
		image_angle = direction;
	}

alarm[0]=irandom_range(room_speed*0.5,room_speed*1.5);