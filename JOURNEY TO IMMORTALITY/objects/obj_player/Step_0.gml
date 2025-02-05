/// @description Insert description here
// You can write your code in this editor
if room == Room_Immortal
{
if (obj_collidable.itime > 0) {obj_collidable.itime--;}

if (obj_collidable.itime <= 0)
{
	room_goto(Room_Mortal)
}
}
if room == Room_Mortal
{
if state != "portalTime" 
{
if keyboard_check(ord("D")){
	hsp = 5;
	image_xscale = 1;
}

if keyboard_check(ord("A")){
	hsp = -5;	
	image_xscale = -1;
}

//if keyboard_check(vk_space) and !jumping 
//{
//	jumpPower -= .4 ;
//}

if keyboard_check_released(vk_space) and !jumping
{	
	if jumpPower < maxJumpHeight
	{
		jumpPower = maxJumpHeight;
	}
	vsp += jumpPower;
	jumpPower = minJumpHeight;	
	
	jumping = true;
}
}
if state != "portalTime" then vsp += global.grav;
myTileCol = layer_tilemap_get_id("Tiles_1")
if place_meeting(x,y+vsp,myTileCol)
{
	if vsp > 0 then jumping = false;
	var collide = false;
	while (collide == false)
	{
		if place_meeting(x,y+sign(vsp),myTileCol)
		{
			collide = true;
		}
		else
		{
			y += sign(vsp);
		}
	}
	vsp = 0;
}

if place_meeting(x+hsp,y,myTileCol)
{
	var collide = false;
	while (collide == false)
	{
		if place_meeting(x+sign(hsp),y,myTileCol)
		{
			collide = true;
		}
		else
		{
			x += sign(hsp);
		}
	}
	hsp = 0;
}

hsp *= global.frict;
y += vsp;
x += hsp;

switch (state) {
    case "idle":
        event_user(0);
        break;
    case "run":
        event_user(1);
        break;
	case "jump":
		event_user(2);
		break;
	case "fall":
		event_user(3);
		break;
	case "attack":
		event_user(4);
		break;
	case "portalTime": 
		event_user(5);
		break;
}
}
if room == Room_Immortal
{
if state != "portalTime"
{
if keyboard_check(ord("D")){
	hsp = 5;
	image_xscale = 1;
}

if keyboard_check(ord("A")){
	hsp = -5;	
	image_xscale = -1;
}

if keyboard_check_released(vk_space) and !jumping
{	
	if jumpPower < (maxJumpHeight *1.9)
	{
		jumpPower = (maxJumpHeight*1.9);
	}
	vsp -= (jumpPower*1.9);
	jumpPower = minJumpHeight;	
	
	jumping = true;
}
}
vsp -= global.grav;
myTileCol = layer_tilemap_get_id("Tiles_1")
if place_meeting(x,y+vsp,myTileCol)
{
	if vsp < 0 then jumping = false;
	var collide = false;
	while (collide == false)
	{
		if place_meeting(x,y+sign(vsp),myTileCol)
		{
			collide = true;
		}
		else
		{
			y += sign(vsp);
		}
	}
	vsp = 0;
}

if place_meeting(x+hsp,y,myTileCol)
{
	var collide = false;
	while (collide == false)
	{
		if place_meeting(x+sign(hsp),y,myTileCol)
		{
			collide = true;
		}
		else
		{
			x += sign(hsp);
		}
	}
	hsp = 0;
}

hsp *= global.frict;
y += vsp;
x += hsp;

switch (state) {
    case "idle":
        event_user(0);
        break;
    case "run":
        event_user(1);
        break;
	case "jump":
		event_user(2);
		break;
	case "fall":
		event_user(3);
		break;
	case "attack":
		event_user(4);
		break;
	case "portalTime": 
		event_user(5);
		break;
}
}