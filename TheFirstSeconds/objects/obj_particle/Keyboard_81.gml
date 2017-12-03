if (distance_to_point(mouse_x,mouse_y)<=0 && point_distance(obj_player.x, obj_player.y, x, y) < fuse_distance && obj_player.tier >= tier && obj_player.join_limit - obj_player.joined > 0){
	if (!joining) {
		joining = true;
	}
}