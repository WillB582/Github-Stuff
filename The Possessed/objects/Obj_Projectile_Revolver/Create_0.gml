// @description Projectile movement
direction = point_direction(x, y, mouse_x, mouse_y);
direction = direction + random_range(-4, 4);
speed = 50;
image_angle = direction;