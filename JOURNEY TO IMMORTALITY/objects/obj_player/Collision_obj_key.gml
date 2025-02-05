/// @description Insert description here
// You can write your code in this editor
obj_collidable.touchkey = true

if coins >= 10 {if keyboard_check(ord("E")){ coins-=10;obj_collidable.key=true;instance_destroy(other);alarm_set(4,60)}}