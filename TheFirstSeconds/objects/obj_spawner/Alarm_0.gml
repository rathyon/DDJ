if (instance_number(obj_particle) < 30) {
	instance_create_layer(random(room_width), random(room_height), "Particles_layer", obj_particle);
}
alarm[0] = spawnrate;