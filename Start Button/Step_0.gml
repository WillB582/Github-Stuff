/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self){room_goto(Room_Mortal)}
else if mouse_check_button_pressed(mb_right) && position_meeting(mouse_x, mouse_y, self){room_goto(Room_Mortal)}
else if mouse_check_button_pressed(mb_middle) && position_meeting(mouse_x, mouse_y, self) {room_goto(Room_Mortal)}
