if(x < 0 || x > room_width) {
	instance_destroy();
} else if(y < 0 || y > room_width) {
	instance_destroy();
}

if (image_alpha < 1.0 && !spawned) {
	image_alpha += 0.02;
} else if (!spawned) {
	image_alpha = 1.0;
	spawned = true;
}
var khir_rate = khir / (khir + ferr + yohg);
var ferr_rate = ferr / (khir + ferr + yohg);
var yohg_rate = yohg / (khir + ferr + yohg);

image_xscale = (khir + ferr + yohg) / 500;
image_yscale = image_xscale;

image_angle += rotation_speed % 360;

if (moving) {
	motion_set(random_direction, move_speed);
}
