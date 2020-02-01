var _directionAdjustment;
var _directionBreak;


if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)){
	activated = true;	
}

if(activated){
mouseDirection = point_direction(x,y,mouse_x,mouse_y);

directionDiff = mouseDirection mod 45;
if(directionDiff>directionInterval/2){
	_directionAdjustment = directionInterval;
}else{
	_directionAdjustment=0
}

myDirection = mouseDirection - directionDiff + _directionAdjustment
}


if(mouse_check_button_released(mb_left)){
	activated = false;	
}

if(myDirection = startDirection){
	knobBroken = false;
}


//Check knob is in correct position
if(myDirection = startDirection){
	knobBroken = false;
}

