/// @description Insert description here
// You can write your code in this editor
lastDirection = point_direction(0, 0, haxis, vaxis);

if(haxis != 0 || vaxis != 0) {
	lastHaxis = haxis;
	lastVaxis = vaxis;
}

x = clamp(x, sprite_width, room_width-150);
y = clamp(y, 1200 + sprite_height, room_height-100);