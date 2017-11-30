if (point_distance(obj_player.x, obj_player.y, x, y) < fuse_distance && !fusing) {
	fusing = true;
	if(fuse) fuse.image_alpha = 0.5;
	audio_play_sound(snd_fuse, 1 , false);
}