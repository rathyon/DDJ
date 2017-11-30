if (enabled) {
	if ((point_distance(obj_player.x, obj_player.y, mouse_x, mouse_y) > trigger_distance) || joined) {
		image_alpha = 0.5;
	}
	else {
		image_alpha = 1;
	}
}
else {
	image_alpha = 0.25;
}