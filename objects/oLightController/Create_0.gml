/// @description Insert description here
// You can write your code in this editor
// Create a surface the size of the current room
// You could also create a surface the size of the current view, but I won't get into that
alph = 0;
surf = surface_create(room_width, room_height);

// The following two lines clear the surface
// There is no guarantee that the surface doesn't contain garbage info post-creation
surface_set_target(surf);
draw_clear_alpha(c_black, 0);

// Reset to application surface
surface_reset_target();