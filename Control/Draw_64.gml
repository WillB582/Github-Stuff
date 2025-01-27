/// @description Insert description here
// You can write your code in this editor
if room = Room_Mortal {
for(var i = 0; i < obj_player.pLives; i++)
{
	
	draw_sprite(spr_life,0, 40 + i * 40, 20);
}

for(var i = 0; i < obj_player.totalLives; i++)
{
	draw_sprite_ext(spr_life,0, 40 + i * 40, 20, 1, 1, 0,c_white, 0.6);
}
}



