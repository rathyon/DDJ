/// @description Join
// You can write your code in this editor
if (distance_to_point(mouse_x,mouse_y)<=0 && point_distance(obj_player.x, obj_player.y, x, y) < fuse_distance){
	if (!joining) {
		joining = true;
	}
}