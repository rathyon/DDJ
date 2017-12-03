var num_particles = instance_number(obj_particle);
for(i=0; i<num_particles; i++) {
	var particle = instance_find(obj_particle, i);

	with(particle){

		if(joined){
			instance_destroy(obj_particle);
		}	
	}
}

instance_destroy(obj_energy);
instance_destroy(obj_player);
instance_deactivate_all(true);
