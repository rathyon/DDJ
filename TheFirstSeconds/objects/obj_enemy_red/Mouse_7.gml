with(obj_player){
	var i;
	var shortest_distance = 0;
	var closest_particle = 0;
	for (i = 0; i < ds_list_size(joined_particles); i++) {
		var distance = 0;
		var particle_id = joined_particles[| i];
		with (particle_id) {
			distance = distance_to_point(mouse_x, mouse_y);
		}
		if (i == 0) {
			shortest_distance = distance;
			closest_particle = particle_id;
		}
		else {
			if (distance < shortest_distance) {
				shortest_distance = distance;
				closest_particle = particle_id;
			}
		}
	}
	if (closest_particle != 0) {
		if(closest_particle.joined && yohg > 20) {
			with (closest_particle) {
				shot = true;
				target_x = mouse_x;
				target_y = mouse_y;
				start_x = x;
				start_y = y;
			}
			joined -= 1;
			yohg -= 20;
			ds_list_delete(joined_particles, ds_list_find_index(joined_particles, closest_particle));
		}
	}
}