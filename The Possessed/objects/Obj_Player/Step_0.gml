/// @description Walking, Shooting ETC
// You can write your code in this editor
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));

if keyboard_check(vk_escape)
{
	room_goto(Menu)
}
if keyboard_check(vk_f5)
{
	room_goto(LVL_1_Prologue)
}
if place_meeting(x, y, Obj_Enemies)
{
	alarm_set(2,30);
}
image_angle = point_direction(x,y,mouse_x,mouse_y);


var hsp = right - left; 
var vsp = down - up;

x += hsp * walkspeed;
y += vsp * walkspeed;

if (xprevious == x and yprevious == y) { image_speed = 0; }
else {image_speed = 1;	}

//if mouse_check_button_pressed(mb_left){
//	if (shots <= tshots){
//if weapon_sprite = Spr_revolver_pick_up{
//instance_create_layer(x+30, y-5,layer, Obj_projectile_revolver)
//shots += 1;}
//}
//}
//if mouse_check_button_pressed(mb_left){
//	if (shots <= tshots) {
//if weapon_sprite = Spr_shotgun_pick_up{
//	instance_create_layer(x, y, layer, Obj_projectile_shotgun)
//	shots+= 2;

//	shotgunxy = 7
//	for (var i = 0; i < shotgunxy; ++i)
//			instance_create_layer(x+i, y+i, layer, Obj_projectile_shotgun)
//	}
//}
//}


if mouse_check_button_pressed(mb_left) && shots <= tshots{
	switch (currentwep) {
	    case Spr_shotgun_pick_up:
	      instance_create_layer(x, y, layer, Obj_Projectile_Shotgun)
	shots+= 2;

	shotgunxy = 7
	for (var i = 0; i < shotgunxy; ++i)
			instance_create_layer(x+i, y+i, layer, Obj_Projectile_Shotgun)
	        break;
	  case Spr_revolver_pick_up:
	instance_create_layer(x+30, y-5,layer, Obj_Projectile_Revolver)
shots += 1;
	break
	default :
	
	break
	}
	










}

	if keyboard_check(ord("R")){
	if canshoot = true
	{
		canshoot = false;
		alarm_set(1,30);
	}
	}
if hp = 0
{
	room_goto(Menu)
}
 if hp >= hp_max hp = hp_max 

 if wepang >= 360 then wepang = 0
 if canshoot = 0
	{
		wepang += 12
	}
	 if canshoot = 1
	{
		 wepang = image_angle
	}
//}
if !instance_exists(Obj_Enemies) and !instance_exists(Obj_Boss)
{
	room_goto_next()
}