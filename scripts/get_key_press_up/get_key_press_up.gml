// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_key_press_up(){
	return keyboard_check(vk_up) || keyboard_check(ord("W"));
}