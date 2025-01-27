/// @description Attack State
// You can write your code in this editor
sprite_index = spr_hero_attack;
if (image_xscale == 1)
{
	var _bbox = bbox_right;
}
else
{
	var _bbox = bbox_left;
}
if(image_index > 4)
{
	var eHit = collision_rectangle_list(_bbox,bbox_top,x+(65*image_xscale),bbox_bottom,obj_enemy,false,true,eList,false);

	if (eHit > 0)
	{
		for (i = 0; i < eHit; i++)
		{
			var _enemy = ds_list_find_value(eList, i)
		    scr_knock(image_xscale,_enemy,4);
			if (_enemy.state != "knock")
			{
				_enemy.eLives -= 1;
			}
			_enemy.state = "knock";
		}
		ds_list_clear(eList);
	}
}

if (image_index > image_number-1)
{
	state = "idle";
}


