if(obj_player.hp < 100) {
	obj_player.hp = min(100, obj_player.hp + 20);
	instance_destroy();
}