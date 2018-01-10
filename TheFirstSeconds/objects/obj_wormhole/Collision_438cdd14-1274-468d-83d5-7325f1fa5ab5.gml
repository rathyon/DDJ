if (room==0){
	
	//instance_destroy(obj_player);
	//instance_destroy(obj_energy);

	//var num_particles = instance_number(obj_particle);
	
	//for(i=0; i<num_particles; i++) {
	//	var particle = instance_find(obj_particle, i);

	//	with(particle){

	//		if(joined){
	//			instance_destroy(obj_particle);
	//		}
			
			
	//	}
	//}
	obj_player.joined = 0;
	ds_list_clear(obj_player.joined_particles);
	room_goto_next();
	
	//room_instance_add(room+1, 270, 240, obj_player);
	//instance_place(270, 270, obj_player);
	//instance_position(270, 270, obj_player);

}
else if (room==1){
	room_goto(room_first);
	//instance_position(770, 520, my_player);
}

//HARD CODED POSITIONS TO DIFFERENTIATE WORMHOLES
else if(room == 2){
	if(x = 256 && y == 1376){
		room_goto(3);
	}
	else{
		room_goto(4);
	}
}

else if(room == 3){
	room_goto(2);
}
else if(room == 4){
	room_goto(2);
}