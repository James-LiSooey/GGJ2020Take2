/// @description Insert description here
// You can write your code in this editor
if(gamepad_button_check_released(0, gp_face1)) {
	if(global.lightsActive) {
		global.lightsActive = false;
	} else {
		global.lightsActive = true
	}
}

if(gamepad_button_check_released(0, gp_face2)) {
	if(global.propellerActive) {
		global.propellerActive = false;
	} else {
		global.propellerActive = true;	
	}
}

if(gamepad_button_check_released(0, gp_face3)) {
	if(global.pressureActive) {
		global.pressureActive = false;
	} else {
		global.pressureActive = true;	
	}
}