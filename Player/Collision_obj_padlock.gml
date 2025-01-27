/// @description Insert description here
// You can write your code in this editor
if !obj_collidable.doorunlocked then obj_collidable.touchlock = true

if obj_collidable.key 
{
	if keyboard_check(ord("E"))
	{ 
		obj_collidable.key = false;
		obj_collidable.doorunlocked = true;
		keytime = true
		other.image_index=5;
		obj_collidable.touchlock=false;
		alarm_set(3,60)
	}
}

