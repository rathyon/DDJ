//goto level2

sdif(room == 0 || room == 1){
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
