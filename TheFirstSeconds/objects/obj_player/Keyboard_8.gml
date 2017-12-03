if(restart){
	
	show_debug_message("entrei");
	instance_destroy(obj_player);
	instance_deactivate_all(true);
	
	room_restart();
	
	restart=false;
}