instance_destroy(obj_player);
instance_destroy(obj_energy);

var num_particles = instance_number(obj_particle);

for(i=0; i<num_particles; i++) {
	var particle = instance_find(obj_particle, i);

	
	with(particle){

		if (room == 0) {
			room_goto_next();
			
			room_instance_add(room+1, 20, 20, obj_player);
			
		}
		else if (room == 1){
			
			room_goto(room_first);
			room = level;
			//room_goto(room_first);
		}
		else{}
		
		instance_destroy(obj_particle);
		
	}
}