// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_input(){
	if(array_length(global.gamepads)>0){
		thrusters = gamepad_button_value(global.gamepads[0], gp_shoulderlb);
		turning = -gamepad_axis_value(global.gamepads[0], gp_axislh);
		attack= gamepad_button_check(global.gamepads[0], gp_face3);
		attackPressed= gamepad_button_check_pressed(global.gamepads[0], gp_face3);
		attackReleased= gamepad_button_check_released(global.gamepads[0], gp_face3);
		return([thrusters, turning, attack, attackPressed, attackReleased]);
	};
	
	thrusters = keyboard_check(ord("W")) or keyboard_check(vk_up);
	turning = (keyboard_check(ord("A")) or keyboard_check(vk_left)) - (keyboard_check(ord("D")) or keyboard_check(vk_right));
	attack = keyboard_check(vk_space);
	attackPressed = keyboard_check_pressed(vk_space);
	attackReleased = keyboard_check_released(vk_space);
	return([thrusters, turning, attack, attackPressed, attackReleased]);
}

function scr_bullet_spawner(weapon, xpos, ypos, timer){
	switch(weapon){
		case "Minigun":
			if(!timer){
				var _bullet = instance_create_layer(xpos + random_range(-2, 2), ypos + random_range(-2, 2), "Instances", obj_bullet);
				var angleRandomizer = random_range(-5,5);
				_bullet.direction = self.image_angle+angleRandomizer;
				_bullet.image_angle = self.image_angle+angleRandomizer;
				_bullet.speed = 35;
				timer = room_speed/10;
			};
		break;
	};
	
	return(timer);			
}