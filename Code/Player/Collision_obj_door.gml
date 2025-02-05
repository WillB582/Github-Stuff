/// @description Insert description here
// You can write your code in this editor

if obj_collidable.doorunlocked && keytime = false
{
	 obj_collidable.touchdoor = true
	if keyboard_check(ord("E"))
	{ 
		obj_collidable.doorunlocked = false;
		obj_collidable.touchdoor=false;
		alarm_set(2,1)
	}
}

