/// @description Insert description here
// You can write your code in this editor
if (!iFrames)
{
	iFrames = true;
	pLives -= 1;
	audio_play_sound(snd_hit,10,false);
	image_blend = c_blue;
	alarm_set(0,90);
}

if (pLives < 1)
{
	room_goto(room_start)
}







