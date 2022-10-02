// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_key_press_right(){
	return keyboard_check(vk_right) || keyboard_check(ord("D"));
}