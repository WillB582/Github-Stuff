/// @description Fall State
// You can write your code in this editor

sprite_index = spr_hero_fall;

if (image_index > image_number-1)
{
	image_speed = 0;
	image_index = image_number-1;
}

if (vsp == 0) or (abs(vsp)==0)
{
	image_speed = 1;
	image_index = 0;
	state = "idle";
}






