/// @description Shotgun Coll
// You can write your code in this editor
if place_meeting(x,y, Obj_Projectile_Shotgun)
{
	if (ehp > 0) then ehp -= 20;
if (ehp <= 0) then ehp = 0;
instance_destroy(Obj_Projectile_Shotgun)
}