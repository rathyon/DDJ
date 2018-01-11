/*var num_particles = instance_number(obj_particle);
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
instance_deactivate_all(true);*/

if(room == 0){
	room_set_persistent(0,false);
	room_set_persistent(1,false);
	instance_destroy(obj_player);
	instance_destroy(obj_energy);
	room_goto(2);
	instance_create_layer(400, 200, "Instances", obj_player);
	instance_create_layer(0, 0, "Instances", obj_energy);
	obj_player.x = 400;
	obj_player.y = 200;
}
else if (room == 2) {
	instance_destroy(obj_particle);
	instance_destroy(obj_enemy_red);
	instance_destroy(obj_energy);
	instance_destroy(obj_player);
	instance_deactivate_all(true);
}
