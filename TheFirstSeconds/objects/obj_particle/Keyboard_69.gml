if(joined && obj_player.yohg > 20) {
	shot = true;
	target_x = mouse_x;
	target_y = mouse_y;
	start_x = x;
	start_y = y;
	obj_player.joined -= 1;
	obj_player.yohg -= 20;
}
