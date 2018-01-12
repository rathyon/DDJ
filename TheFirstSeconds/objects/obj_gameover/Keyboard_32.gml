if(!instance_exists(obj_player)){
	
	if(room == 2 || room == 3 || room == 4){
		/*room_goto(2);
		instance_create_layer(400, 200, "Instances", obj_player);
		instance_create_layer(0, 0, "Instances", obj_energy);
		obj_player.x = 400;
		obj_player.y = 200;*/
		room_restart();
	}
	else {
		game_restart();
	}
	
}