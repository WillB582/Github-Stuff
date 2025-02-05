/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y, Obj_Projectile_Revolver)
{
	if (ehp > 0) then ehp -= 10;
if (ehp <= 0) then ehp = 0;
instance_destroy(Obj_Projectile_Revolver)
}