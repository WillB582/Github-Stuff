function scr_gravCol()
{
	if room = Room_Mortal
	{
	myTileCol = layer_tilemap_get_id("Tiles_1")
	vsp += global.grav;

	if place_meeting(x,y+vsp,myTileCol)
	{
		vsp = 0;
	}
	if !place_meeting(x+hsp,y+global.grav,myTileCol) {hsp *= -1;image_xscale*=-1;}

	y += vsp;
	x += hsp;
	
	}

	if room = Room_Immortal
	{
	myTileCol = layer_tilemap_get_id("Tiles_1")
	vsp -= global.grav;

	if place_meeting(x,y+vsp,myTileCol)
	{
		vsp = 0;
	}
	if !place_meeting(x+hsp,y-global.grav,myTileCol) then hsp *= -1;

	if place_meeting(x+hsp,y,myTileCol)
	{
		hsp *= -1;
	}

	y += vsp;
	x += hsp;
	}
}

function kbCol (object)
{
	with(object)
	{
		if room = Room_Mortal
		{
		myTileCol = layer_tilemap_get_id("Tiles_1")
		if (place_meeting(x,y,myTileCol))
		{
			return true; 
		}
		if !place_meeting(x+hsp,y+global.grav,myTileCol) then return true
		}
		if room = Room_Immortal
		{
		myTileCol = layer_tilemap_get_id("Tiles_1")
		if (place_meeting(x,y,myTileCol))
		{
			return true; 
		}
		if !place_meeting(x+hsp,y-global.grav,myTileCol) then return true
		}
	}
}