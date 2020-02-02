/// @description Insert description here
// You can write your code in this editor
//randomize();

if(nearSub) {
	move_towards_point(oSubmarine.x, oSubmarine.y,speed);
	x = clamp(x, sprite_width, room_width-350);
	y = clamp(y, 2000 + sprite_height, room_height-200);
} else if (!nearSub && !nearChest) {
	move_towards_point(oChest.x, oChest.y,speed);
	x = clamp(x, sprite_width, room_width-350);
	y = clamp(y, 2000 + sprite_height, room_height - sprite_height - oGround.sprite_height);
} else {
	x = clamp(x, sprite_width, room_width-350);
	y = clamp(y, room_height - 2000, room_height - sprite_height - oGround.sprite_height);	
}

if(direction > 90 && direction < 270) {
	image_xscale = -1;
	image_angle = direction - 180;
} else {
	image_xscale = 1;
	image_angle = direction;
}
