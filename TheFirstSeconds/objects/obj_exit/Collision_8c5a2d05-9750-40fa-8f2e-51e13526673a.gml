if(room == 0){
	room_set_persistent(0,false);
	room_set_persistent(1,false);
	instance_destroy(obj_player);
	instance_destroy(obj_energy);
	room_goto(2);
	instance_create_layer(400, 200, "Instances", obj_player);
	instance_create_layer(0, 0, "Instances", obj_energy);
}
else if (room == 2) {
	instance_destroy(obj_particle);
	instance_destroy(obj_enemy_red);
	instance_destroy(obj_energy);
	instance_destroy(obj_player);
	instance_deactivate_all(true);
}
