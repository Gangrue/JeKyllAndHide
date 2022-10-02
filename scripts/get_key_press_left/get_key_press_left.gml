// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_key_press_left(){
	return keyboard_check(vk_left) || keyboard_check(ord("A"));
}