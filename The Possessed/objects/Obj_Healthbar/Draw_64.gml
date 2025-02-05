/// @description Visualised HP and Ammo
// You can write your code in this editor
draw_sprite(Spr_Healthborder, 0, healthbar_x-45, healthbar_y-10);
draw_sprite_ext(spr_healthbar_bg, 0, healthbar_x-45, healthbar_y-10, Obj_Player.hp / Obj_Player.hp_max, 1, image_alpha-1, image_blend,1);
draw_text(healthbar_x-45,healthbar_y-10, string(Obj_Player.hp));