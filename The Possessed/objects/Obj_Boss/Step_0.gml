/// @description Insert description here
// You can write your code in this editor
px = Obj_Player.x
py = Obj_Player.y

ex = x
ey = y

tx = px - ex
ty = py - ey

tx = tx / room_speed
ty = ty / room_speed

x+=tx
y+=ty
// enemy dies
if ehp = 0
{
	instance_destroy(other)
}