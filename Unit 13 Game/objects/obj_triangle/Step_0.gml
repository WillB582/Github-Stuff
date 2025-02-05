/// @description Insert description here
// You can write your code in this editor
if(eLives<1)
{
	state = "dead";
}


switch (state) {
    case "normal":
        script_execute(scr_gravCol);
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




