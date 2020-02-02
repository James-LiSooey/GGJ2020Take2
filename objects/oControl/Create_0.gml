/// @description Insert description here
// You can write your code in this editor
randomize();

global.lightsActive2 = true;
global.propellerActive2 = true;
global.pressureActive2 = true;
global.dead = false;
instance_create_layer(random_range(400,room_width-350),random_range(400,room_height-200),"Instances",oMonster);