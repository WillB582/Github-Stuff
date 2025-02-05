/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(eLives<1)
{
	state = "dead";
}


switch (state) {
    case "normal":
        script_execute(scr_gravCol);
		if room = Room_Mortal{sprite_index = spr_mortal_run}
		else if room = Room_Immortal{sprite_index = spr_immortal_run}
        break;
    case "knock":
		if !kbCol(self)
		{
			x += kbPower / 120;
		}
        break;
	case "dead":
		instance_destroy(self);
		break;
}




