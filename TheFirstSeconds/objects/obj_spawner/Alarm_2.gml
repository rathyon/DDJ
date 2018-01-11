/// @description HP particle spawning

if (room == 0 && instance_number(obj_hp_particle) < 4) {
	instance_create_layer(random(room_width), random(room_height), "Particles_layer", obj_hp_particle);
	alarm[2] = hp_spawnrate*3;
}
else if (room == 1 && instance_number(obj_hp_particle) < 3) {
	instance_create_layer(random(room_width), random(room_height), "Instances", obj_hp_particle);
	alarm[2] = hp_spawnrate/2;
}


alarm[2] = hp_spawnrate;