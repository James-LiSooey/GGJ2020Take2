
myDirection = 0;

directionInterval = 45;
activated = false

startDirection = random_range(0,7);
startDirection = (startDirection - (startDirection mod 1)) * directionInterval;

myDirection = startDirection;

knobBreak = false;
knobBroken = false;
