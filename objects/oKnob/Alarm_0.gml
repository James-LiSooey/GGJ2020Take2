
if(!knobBreak){
	
	_directionBreak = random_range(0,7);
	_directionBreak = (_directionBreak - (_directionBreak mod 1)) * directionInterval;
	myDirection = _directionBreak;
	
	knobBroken = true;
	knobBreak = true;
}