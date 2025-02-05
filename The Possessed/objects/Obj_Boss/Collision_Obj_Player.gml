/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_text(x,y, string(ehp));
if place_meeting(x,y,Obj_Player)
{
	if (Obj_Player.hp > 0) then Obj_Player.hp -= (20/room_speed);
	if (Obj_Player.hp <= 0) then Obj_Player.hp = 0;
}