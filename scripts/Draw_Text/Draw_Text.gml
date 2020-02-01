var _Text = argument0;
var _x = argument1;
var _y = argument2;

draw_set_font(font0)

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed_colour(_x,_y,_Text, 3, 3, image_angle, c_white, c_white, c_white, c_white, 1);