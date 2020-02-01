/// @description Insert description here
// You can write your code in this editor

//Move camera to new board
if(keyboard_check_released(vk_right)){
	
	var currentCameraX = camera_get_view_x(view_camera[0])
	var newCameraX = currentCameraX+960;
	if(newCameraX >960*3){
		newCameraX = 0
	}
	camera_set_view_pos(view_camera[0],newCameraX,0);
}
if(keyboard_check_released(vk_left)){
	
	var currentCameraX = camera_get_view_x(view_camera[0])
	var newCameraX = currentCameraX-960;
	if(newCameraX <0){
		newCameraX = 960*3
	}
	camera_set_view_pos(view_camera[0],newCameraX,0);
}



//Check if radar is fixed
var _radarfixed = true;

if(radarActive = false){
	//check if any knobs are boken
	with(oKnob){
		if(oKnob.knobBroken && oKnob.knobBreak){
			_radarfixed = false;
			break;
		}
	}
	//if no knobs are broken, repair radar
	if(_radarfixed){
		radarActive = true;
	}
}






