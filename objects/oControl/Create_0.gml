/// @description Insert description here
// You can write your code in this editor
randomize();

global.lightsActive2 = true;
global.propellerActive2 = true;
global.pressureActive2 = true;
global.dead = false;
global.hasChest = false;

instance_create_layer(random_range(200,room_width-100),room_height - sChest.sprite_height - (sGround.sprite_height / 2),"Instances",oChest);

alarm[0] = 1;
alarm[1] = 120;
