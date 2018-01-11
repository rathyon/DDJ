if (point_distance(obj_player.x, obj_player.y, x, y) < fuse_distance) {
	if (!fusing) {
		if (obj_player.tier >= tier) {
			fusing = true;
			if(fuse) fuse.image_alpha = 0.5;
			audio_play_sound(snd_fuse, 1 , false);
		}
		else {
			error_display = true;
			error_message = "It's too big to fuse"
			alarm[0] = error_timer;
		}
	}
	else {
		error_display = true;
		error_message = "It's already fusing"
		alarm[0] = error_timer;
	}
}
else {
	error_display = true;
	error_message = "I'm too far away to fuse"
	alarm[0] = error_timer;
}