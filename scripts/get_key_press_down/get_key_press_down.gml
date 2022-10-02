// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_key_press_down(){
	return keyboard_check(vk_down) || keyboard_check(ord("S"));
}