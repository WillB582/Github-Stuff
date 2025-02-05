/// @description Insert description here
// You can write your code in this editor
if (!iFrames)
{
	iFrames = true;
	if room = Room_Mortal {pLives -= 1;}
	else {obj_collidable.itime -=5*room_speed}
	audio_play_sound(snd_hit,10,false);
	image_blend = c_blue;
	alarm_set(0,90);
	if room = Room_Mortal{x-=70;y-=50}
	else {x=320;y=96;hsp=0;vsp=0}

}

if (pLives < 1)
{
	game_end();
}




