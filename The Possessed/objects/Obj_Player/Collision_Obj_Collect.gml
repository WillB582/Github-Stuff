/// @description Insert description here
// You can write your code in this editor
if (ds_list_size(pInvent.invent) < 2)
{
instance_destroy(other);
ds_list_add(pInvent.invent,other.sprite_index);
}