if(!instance_exists(obj_player)){

	if(room == level){
		room_restart();
	}else{
		room_goto(level);
		room_restart();
	}
	
	

}