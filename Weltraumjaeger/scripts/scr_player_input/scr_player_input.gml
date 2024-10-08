// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_input(){
	if(array_length(global.gamepads)>0){
		thrusters = gamepad_button_value(global.gamepads[0], gp_shoulderlb);
		turning = -gamepad_axis_value(global.gamepads[0], gp_axislh);
		attack=0;
		attackPressed=0;
		attackReleased=0;
		return([thrusters, turning, attack, attackPressed, attackReleased]);
	};
	
	thrusters = keyboard_check(ord("W")) or keyboard_check(vk_up);
	turning = (keyboard_check(ord("A")) or keyboard_check(vk_left)) - (keyboard_check(ord("D")) or keyboard_check(vk_right));
	attack = keyboard_check(vk_space);
	attackPressed = keyboard_check_pressed(vk_space);
	attackReleased = keyboard_check_released(vk_space);
	return([thrusters, turning, attack, attackPressed, attackReleased]);
}