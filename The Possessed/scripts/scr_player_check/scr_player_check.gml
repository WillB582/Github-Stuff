// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_check(object){
with (object){
var _dis = distance_to_object(Obj_Player)

var _found_player = mp_grid_path(global.mp_grid, path1, x, y, Obj_Player.x, Obj_Player.y, choose(0, 1));

if _found_player {
	path_start(path1, move_speed, path_action_stop, false);
	}
}
}