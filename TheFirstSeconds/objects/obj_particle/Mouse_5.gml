if (point_distance(obj_player.x, obj_player.y, x, y) < analyze_distance) {
	enemy_energy = instance_create_layer(x, y, "Instances", obj_energy);
	enemy_energy.khir = khir;
	enemy_energy.ferr = ferr;
	enemy_energy.yohg = yohg;
	enemy_energy.text_align = fa_right;
	enemy_energy.player = false;
}