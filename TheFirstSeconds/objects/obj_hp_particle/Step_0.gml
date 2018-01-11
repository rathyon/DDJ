if(x < (0 - sprite_width/2) || x > (room_width + sprite_width/2)) {
	instance_destroy();
} else if(y < (0 - sprite_height/2)  || y > (room_height + sprite_height/2)) {
	instance_destroy();
}

if (image_alpha < 1.0 && !spawned) {
	image_alpha += 0.02;
} else if (!spawned) {
	image_alpha = 1.0;
	spawned = true;
}

image_angle += rotation_speed % 360;
