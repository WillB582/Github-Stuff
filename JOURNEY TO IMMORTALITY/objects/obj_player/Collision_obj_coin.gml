/// @description Insert description here
// You can write your code in this editor

	coins += 1;

var coinPart = part_system_create(prt_test);
part_system_position(coinPart,other.x,other.y)
scr_destroyPart(coinPart,60);
//var coinPart = part_system_create(prt_health);
//part_system_position(coinPart,other.x,other.y);
instance_destroy(other);

