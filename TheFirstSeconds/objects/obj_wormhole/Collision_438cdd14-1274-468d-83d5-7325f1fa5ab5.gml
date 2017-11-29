instance_destroy(obj_player);
instance_destroy(obj_energy);

var num_particles = instance_number(obj_particle);

for(i=0; i<num_particles; i++) {
	var particle = instance_find(obj_particle, i);
	
	with(particle){
		if(joined){
			instance_destroy(obj_particle);
		}
	}
}