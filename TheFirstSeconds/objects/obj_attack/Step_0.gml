if (point_distance(obj_player.x, obj_player.y, mouse_x, mouse_y) > obj_enemy_red.attack_distance) {
	image_alpha = 0.5;
}
else {
	image_alpha = 1;
}