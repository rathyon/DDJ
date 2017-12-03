
if (image_alpha < 1.0 && !spawned) {
	image_alpha += 0.02;
} else if (!spawned) {
	image_alpha = 1.0;
	spawned = true;
}

image_angle += rotation_speed % 360;
