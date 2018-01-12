//goto level2

if(room == 0 || room == 1){
	room_set_persistent(0,false);
	room_set_persistent(1,false);
	instance_destroy(obj_player);
	instance_destroy(obj_energy);
	room_restart();
	room_goto(2);
	instance_create_layer(400, 200, "Instances", obj_player);
	instance_create_layer(0, 0, "Instances", obj_energy);
	room_set_persistent(2,true);
	room_set_persistent(3,true);
	room_set_persistent(4,true);
	/*obj_player.x = 400;
	obj_player.y = 200;*/
}

if(room == 2 || room == 3 || room = 4) {
	room_set_persistent(2,false);
	room_set_persistent(3,false);
	room_set_persistent(4,false);
	instance_destroy(obj_player);
	instance_destroy(obj_energy);
	room_restart();
	room_goto(0);
	instance_create_layer(512, 384, "Instances", obj_player);
	instance_create_layer(0, 0, "Instances", obj_energy);
	room_set_persistent(0,true);
	room_set_persistent(1,true);
	/*obj_player.x = 400;
	obj_player.y = 200;*/
}
