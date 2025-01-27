/// @description Text On Screen
// You can write your code in this editor
draw_self();
if (obj_collidable.touchkey = true)
{
draw_set_font(Font1)
draw_set_color(c_black)
if coins < 10
{
	coinText1 = string("(You have ") + string(coins) + string(")")
	draw_text(x-10,y+10,"You need 10 Immortal Coins!")
	draw_text(x-10,y+25,coinText1)
}
else {draw_text(x-10,y+10,"Press E to pull key out of ground"); draw_text(x-10,y+25,"(Cost's 10 Immortal Coins)");}
if !place_meeting(x,y,obj_key) then obj_collidable.touchkey = false
}
//draw_rectangle(bbox_right,bbox_top,x+65,bbox_bottom,true);
if obj_collidable.touchlock &&obj_collidable.key 
{
	draw_set_font(Font1)
	draw_set_color(#00008B)
	draw_text(x-300,y-15,"Press E to unlock the door!")
}
if !place_meeting(x,y,obj_padlock) then obj_collidable.touchlock = false
if obj_collidable.touchlock && !obj_collidable.key
{
	draw_set_font(Font1)
	draw_set_color(#00008B)
	draw_text(x-300,y-15,"You need a key! Tip: Portal")
}
if obj_collidable.touchdoor
{
	draw_set_font(Font1)
	draw_set_color(#00008B)
	draw_text(x-300,y-15,"Press E to Victory.")
}
if !place_meeting(x,y,obj_door) then obj_collidable.touchdoor = false