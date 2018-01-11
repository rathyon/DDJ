obj_player.joined = 0;
ds_list_clear(obj_player.joined_particles);

if (room==0){
	room_goto_next();
}
else if (room==1){
	room_goto(room_first);
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