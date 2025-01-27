/// @description Jump State
// You can write your code in this editor

sprite_index = spr_hero_jump;

if (image_index > image_number-1)
{
	image_speed = 0;
	image_index = image_number-1;
}
if room = Room_Mortal
{
if(vsp > 0)
{
	image_index = 0;
	image_speed = 1;
	state = "fall";
}
}
if room = Room_Immortal
{
if(vsp < 0)
{
	image_index = 0
	image_speed = 1
	state = "fall"
}
}






