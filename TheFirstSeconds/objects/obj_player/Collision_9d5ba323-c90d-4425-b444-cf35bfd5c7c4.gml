
//var ins = instance_find(obj_wormhole_pink, );

show_debug_message(instance_nearest(x, y, obj_wormhole_pink));

if(obj_wormhole_pink.x == -128 && obj_wormhole_pink.y == -32){

	obj_player.x = 1230;
	obj_player.y = 250;
	
}else if(obj_wormhole_pink.x == 1184 && obj_wormhole_pink.y == 1280){

	//320 224
	//obj_player.x = -128;
	//obj_player.y = -32;
	show_debug_message("entrei no 2");

	
}else if(obj_wormhole_pink.x == -256 && obj_wormhole_pink.y == 1152){

	show_debug_message("entrei no 3");
	

	
}else if(obj_wormhole_pink.x == 992 && obj_wormhole_pink.y == -32){

	show_debug_message("entrei no 4");
	
}
