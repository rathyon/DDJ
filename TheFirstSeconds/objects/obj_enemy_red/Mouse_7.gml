var i;
var shortest_distance = 0;
var closest_particle = 0;
for (i = 0; i < ds_list_size(obj_player.joined_particles); i++) {
	var distance = 0;
	var particle_id = obj_player.joined_particles[| i];
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
	if(closest_particle.joined) {
		if (obj_player.yohg > 20) {
			with (closest_particle) {
				shot = true;
				target_x = mouse_x;
				target_y = mouse_y;
				start_x = x;
				start_y = y;
			}
			obj_player.joined -= 1;
			obj_player.yohg -= 20;
			ds_list_delete(obj_player.joined_particles, ds_list_find_index(obj_player.joined_particles, closest_particle));
		}
		else {
			error_display = true;
			error_message = "[ More energy required ]"
			alarm[0] = error_timer;
		}
	}
	else {
		error_display = true;
		error_message = "[ Particle is not joined ]"
		alarm[0] = error_timer;
	}
}
else {
	error_display = true;
	error_message = "[ Nothing to shoot with ]"
	alarm[0] = error_timer;
}