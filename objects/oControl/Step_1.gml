/// @description Insert description here
// You can write your code in this editor
if(gamepad_button_check_released(0, gp_face1)) {
	if(global.lightsActive2) {
		global.lightsActive2 = false;
	} else {
		global.lightsActive2 = true
	}
}

if(gamepad_button_check_released(0, gp_face2)) {
	if(global.propellerActive2) {
		global.propellerActive2 = false;
	} else {
		global.propellerActive2 = true;	
	}
}

if(gamepad_button_check_released(0, gp_face3)) {
	if(global.pressureActive2) {
		global.pressureActive2 = false;
	} else {
		global.pressureActive2 = true;	
	}
}