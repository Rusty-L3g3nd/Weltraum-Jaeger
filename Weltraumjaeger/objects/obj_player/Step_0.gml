/// @description Insert description here
// You can write your code in this editor


/* player_input array data:
0 = thrusters
1 = turning
2 = attack pressed and held
3 = attack pressed
4 = attack released
*/

player_input = scr_player_input();


// Rotation
image_angle += player_input[1]*rotSpeed;


// Acceleration
motion_add(image_angle, acc*player_input[0]);
if(speed>terminalVel){
	speed = terminalVel;
};

// Shooting
if(player_input[2]){
	alarm[0] = scr_bullet_spawner(weapon, x, y, alarm[0]);
};