if(!instance_exists(obj_player)){
	
	if(room == 2 || room == 3 || room == 4){
		room_set_persistent(2,false);
		room_set_persistent(3,false);
		room_set_persistent(4,false);
		game_restart();
		room_set_persistent(0,false);
		room_set_persistent(1,false);
		instance_destroy(obj_player);
		instance_destroy(obj_energy);
		room_goto(2);
		instance_activate_all();
		instance_destroy(obj_player);
		instance_destroy(obj_energy);
		instance_destroy(obj_particle);
		instance_destroy(obj_action);
		instance_create_layer(400, 200, "Instances", obj_player);
		instance_create_layer(0, 0, "Instances", obj_energy);
		room_set_persistent(2,true);
		room_set_persistent(3,true);
		room_set_persistent(4,true);
		instance_destroy();
	}
	else {
		game_restart();
	}
	
}