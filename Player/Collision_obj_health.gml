if (pLives < totalLives)
{
	pLives += 1;
}

var healthPart = part_system_create(prt_test);
part_system_position(healthPart,other.x,other.y)
scr_destroyPart(healthPart,60);
//var healthPart = part_system_create(prt_health);
//part_system_position(healthPart,other.x,other.y);
instance_destroy(other);








