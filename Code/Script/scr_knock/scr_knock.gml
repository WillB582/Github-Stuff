// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_knock(scale, object, force)
{
	
	object.kbPower = scale*(100*force);
	
	with(object)
	{
		alarm_set(0, 120);
	}
	
}