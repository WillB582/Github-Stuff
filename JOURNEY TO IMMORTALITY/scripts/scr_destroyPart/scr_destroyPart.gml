// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_destroyPart(part,alarmDuration)
{
	var newPart = instance_create_depth(x,y,10,obj_partDestroyer);
	
	newPart.parttoDestroy = part;
	with (newPart)
	{
		alarm_set(0,alarmDuration);
	}
}