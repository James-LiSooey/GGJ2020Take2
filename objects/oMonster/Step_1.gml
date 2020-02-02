/// @description Insert description here
// You can write your code in this editor
if(point_distance(x,y,oSubmarine.x,oSubmarine.y) < 1000 && !global.dead ) {
	nearSub = true;
} else {
	nearSub = false;	
}

if(point_distance(x,y,oChest.x,oChest.y) < 2000) {
	nearChest = true;
} else {
	nearChest = false;
}
