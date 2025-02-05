/// @description Idle State
// You can write your code in this editor

sprite_index = spr_hero_idle;

if (hsp != 0)
{
	image_index = 0;
	state = "run";
}
if room = Room_Mortal
{
if (vsp < 0)
{
	image_index = 0;
	state = "jump";
}
}
if room = Room_Immortal
{
if (vsp > 0)
{
	image_index = 0;
	state = "jump";
}
}
if mouse_check_button_pressed(mb_left)
{
	image_index = 0;
	state = "attack"
}







