// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_array_get_index(arr, val){
	var i = 0;
	while(arr[i] != val and i < array_length(arr)){
		i++;
	};
	return(i);
}