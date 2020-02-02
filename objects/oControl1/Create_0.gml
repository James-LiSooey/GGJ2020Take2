/// @description Insert description here
// You can write your code in this editor
randomize();

global.lightsActive = true;
global.propellerActive = true;
global.pressureActive = true;
instance_create_layer(random_range(400,room_width-350),random_range(400,room_height-200),"Instances",oMonster);