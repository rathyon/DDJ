if(!instance_exists(obj_player)){

	if(room == level){
		room_restart();
	}else{
		game_restart();
		//room_goto_previous();
		//room_goto(0);
		//room_restart();
	}
	
	

}