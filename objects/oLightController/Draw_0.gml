/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surf)) {
    // Again, surfaces can be a pain
    // Create a new one if there were issues
    surf = surface_create(room_width, room_height);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
} else {
	if (surface_exists(surf)) {
		var _cw = camera_get_view_width(view_camera[0]);
		var _ch = camera_get_view_height(view_camera[0]);
		var _cx = camera_get_view_x(view_camera[0]);
		var	 _cy = camera_get_view_y(view_camera[0]);
		surface_set_target(surf);
		draw_set_color(c_black);
		if(oSubmarine.y < 3000) {
			draw_set_alpha(0.5);	
		} else if(oSubmarine.y < 3500) {
			draw_set_alpha(0.6);	
		} else if(oSubmarine.y < 4000) {
			draw_set_alpha(0.7);	
		} else if(oSubmarine.y < 4500) {
			draw_set_alpha(0.8);	
		} else if(oSubmarine.y < 50000) {
			draw_set_alpha(0.9);	
		} else {
			draw_set_alpha(1);	
		}
		//draw_set_alpha(oSubmarine.y / room_height + 0.2);
		draw_rectangle(0, 0, _cw, _ch, 0);
		gpu_set_blendmode(bm_subtract);
		draw_set_color(c_white);
		with (oSubmarine)
		{
			if(global.lightsActive2) {
				alph = 1;
			} else {
				alph = 0;
			}
			if((abs(gamepad_axis_value(0, gp_axisrv)) + abs(gamepad_axis_value(0, gp_axisrh)) )>.2){
				haxis = gamepad_axis_value(0, gp_axisrh);
				vaxis = gamepad_axis_value(0, gp_axisrv);
			}
			else{
				vaxis = 0
				haxis = 0;
			}
			
			//pd = point_direction(0,0,haxis,vaxis);
			lastDirection = point_direction(0, 0, lastHaxis, lastVaxis);
			if (haxis != 0 || vaxis != 0) {
				draw_sprite_ext(sDirLight, 0, oSubmarine.x - _cx, oSubmarine.y - _cy, 1, 1, point_direction(0,0,haxis,vaxis), c_white, alph);
			} else {
				draw_sprite_ext(sDirLight, 0, oSubmarine.x - _cx, oSubmarine.y - _cy, 1, 1, lastDirection, c_white, alph);
			}
			draw_sprite_ext(sRadLight, 0, oSubmarine.x - _cx, oSubmarine.y - _cy, 1, 1, 0, c_white, 1)
		}
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1);
		surface_reset_target();
		draw_surface(surf, _cx, _cy);
	}
}