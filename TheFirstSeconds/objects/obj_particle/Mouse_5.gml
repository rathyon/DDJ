if (point_distance(obj_player.x, obj_player.y, x, y) < analyze_distance) {
	instance_deactivate_object(obj_energy2);
	enemy_energy = instance_create_layer(x, y, "Instances", obj_energy2);

	enemy_energy.x_energy = x_energy;
	enemy_energy.y_energy = y_energy;
	enemy_energy.z_energy = z_energy;
}