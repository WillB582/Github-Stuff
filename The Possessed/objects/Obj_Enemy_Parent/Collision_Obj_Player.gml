/// @description Insert description here
// You can write your code in this editor
// Damage
if place_meeting(x, y, Obj_Player)
{
if (Obj_Player.hp > 0) then Obj_Player.hp -= (10/room_speed);
if (Obj_Player.hp <= 0) then Obj_Player.hp = 0;
}