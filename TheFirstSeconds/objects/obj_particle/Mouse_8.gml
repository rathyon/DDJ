if (point_distance(obj_player.x, obj_player.y, x, y) < fuse_distance) {
	if (obj_player.tier >= tier) {
		if (obj_player.join_limit - obj_player.joined > 0) {
			if (!joining) {
				joining = true;
			}
			else {
				error_display = true;
				error_message = "It's already joining"
				alarm[0] = error_timer;
			}
		}
		else {
			error_display = true;
			error_message = "I need more energy to join"
			alarm[0] = error_timer;
		}
	}
	else {
		error_display = true;
		error_message = "It's too big to join"
		alarm[0] = error_timer;
	}
}
else {
	error_display = true;
	error_message = "I'm too far away to join"
	alarm[0] = error_timer;
}