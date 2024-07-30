// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShowKey(){
	if !instance_exists(oFkey)
	{
		instance_create_layer(223,192,"Fkey",oFkey)
	}
	
	press = keyboard_check_pressed(ord("F"))
	
	if press
	{
		return true
	}
	else
	{
		return false
	}
}