/// @description Inventory Collection
// You can write your code in this editor
randomize();


sprite = ds_list_create();
ds_list_add(sprite,Spr_revolver,Spr_shotgun);

rand_ = random_range(0,2);


sprite_index = ds_list_find_value(sprite,rand_);