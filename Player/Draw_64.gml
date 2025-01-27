/// @description User Interface
// You can write your code in this editor
coinText = string("Coins: ") + string(coins)
timeText = string("Time: ") + string((obj_collidable.itime/room_speed))
draw_set_font(Font1)
draw_set_color(c_black)
draw_set_font(Font1)
draw_text(10,50,coinText)

//draw_text(10,120,hsp)
//draw_text(10,140,vsp)
//draw_text(10,160,state)
if room = Room_Immortal {draw_text(10,70,timeText)}

if obj_collidable.key = true {draw_sprite(spr_key,1,10,90)}

