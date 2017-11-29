if (point_distance(obj_player.x, obj_player.y, x, y) < analyze_distance) {
	instance_deactivate_object(obj_energy2);
	enemy_energy = instance_create_layer(x, y, "Instances", obj_energy2);

	enemy_energy.khir = khir;
	enemy_energy.ferr = ferr;
	enemy_energy.yohg = yohg;
}