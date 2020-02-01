/// @description Insert description here
// You can write your code in this editor
//randomize();

if(point_distance(x,y,obj_Submarine.x,obj_Submarine.y) < 1000 ) {
	move_towards_point(obj_Submarine.x, obj_Submarine.y,speed);
	//direction = obj_Submarine;
	if(direction > 90 && direction < 270) {
		image_xscale = -1;
		image_angle = direction - 180;
	} else {
		image_xscale = 1;
		image_angle = direction;
	}
}	