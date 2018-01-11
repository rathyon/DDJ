for (var i = 0; i < obj_player.joined; i++) {
	instance_destroy(obj_player.joined_particles[| i]);
}
obj_player.joined = 0;
ds_list_clear(obj_player.joined_particles);

if (room==0){
	room_goto(1);
	obj_player.x = 290;
	obj_player.y = 260;
}
else if (room==1){
	room_goto(0);
	obj_player.x = 1730;
	obj_player.y = 1400;
}

//HARD CODED POSITIONS TO DIFFERENTIATE WORMHOLES
else if(room == 2){
	if(x = 256 && y == 1376){
		room_goto(3);
		obj_player.x = 510;
		obj_player.y = 470;
	}
	else{
		room_goto(4);
		obj_player.x = 240;
		obj_player.y = 390;
	}
}

else if(room == 3){
	room_goto(2);
	obj_player.x = 400;
	obj_player.y = 1280;
}
else if(room == 4){
	room_goto(2);
	obj_player.x = 1670;
	obj_player.y = 390;
}