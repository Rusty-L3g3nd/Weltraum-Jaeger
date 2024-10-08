/// @description Insert description here
// You can write your code in this editor


// Checks if a gamepad has been connected or disconnected
if (async_load[? "event_type"] == "gamepad discovered"){
    var _pad = async_load[? "pad_index"];
    gamepad_set_axis_deadzone(_pad, 0.2);
    array_push(global.gamepads, _pad);
	
	// Assigning deadzones
	gamepad_set_axis_deadzone(global.gamepads[0], 0.2);
	gamepad_set_button_threshold(global.gamepads[0], 0.2);
}else if (async_load[? "event_type"] == "gamepad lost"){
    var _pad = async_load[? "pad_index"];
    var _index = scr_array_get_index(global.gamepads, _pad);
    array_delete(global.gamepads, _index, 1);
};