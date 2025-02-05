/// @description Weapon Drawing
// You can write your code in this editor

draw_self()
var dir = point_direction(x, y, mouse_x, mouse_y );
switch (global.jorkinit) {
   case(0):
   break
   case(1):     
	if keyboard_check_released(ord("1")) {
slot_1 = 1
slot_2 = 0
currentwep = weapon_slot_1
 
 }
 if slot_1 = 1{
	  draw_sprite_ext(weapon_slot_1, image_index, x,y, image_xscale, image_yscale,wepang , image_blend, image_alpha)
 }
 

//draw_text(x,y, string(hp))
	
	if keyboard_check_released(ord("2")){
slot_2 = 1
slot_1 = 0
currentwep = weapon_slot_2
}
if slot_2 = 1 {
	draw_sprite_ext(weapon_slot_2, image_index, x,y, image_xscale, image_yscale,wepang, image_blend, image_alpha)
}
break
}
