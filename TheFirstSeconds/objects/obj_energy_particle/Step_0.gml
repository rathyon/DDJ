
if (image_alpha < 1.0 && !spawned) {
	image_alpha += 0.02;
} else if (!spawned) {
	image_alpha = 1.0;
	spawned = true;
}

image_angle += rotation_speed % 360;

if (fusing) {

	if (point_distance(obj_player.x, obj_player.y, x, y) < 30) {

		obj_player.hp = 100;
		with(obj_player){
			rotation_speed = 0.2;
		}
		
		instance_deactivate_object(obj_action);
		instance_destroy();
	}
	else {
		move_towards_point(obj_player.x, obj_player.y, 1);
		rotation_speed = 2;
		with(obj_player) rotation_speed = 2;
	}
}
