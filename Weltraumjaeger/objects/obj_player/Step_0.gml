/// @description Insert description here
// You can write your code in this editor


player_input = scr_player_input();


// Rotation
image_angle += player_input[1]*rotSpeed;


// Acceleration
motion_add(image_angle, acc*player_input[0]);
if(speed>terminalVel){
	speed = terminalVel;
};