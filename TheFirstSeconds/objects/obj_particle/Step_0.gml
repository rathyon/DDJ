if(x < 0 || x > room_width) {
	instance_destroy();
} else if(y < 0 || y > room_width) {
	instance_destroy();
}


if (image_alpha < 1.0 && !spawned) {
	image_alpha += 0.02;
} else if (!spawned) {
	image_alpha = 1.0;
	spawned = true;
}

if(type == 1){
	image_blend = make_color_rgb(155 + (tier * 50), 0, 0);
}
else if(type == 2){
	image_blend = make_color_rgb(0, 155 + (tier * 50), 0);
}
else{
	image_blend = make_color_rgb(0, 0, 155 + (tier * 50));
}

image_xscale = 1 + (1 * tier);
image_yscale = image_xscale;

image_angle += rotation_speed % 360;

if (fusing) {

	// if in range to "consume"
	if (point_distance(obj_player.x, obj_player.y, x, y) < obj_player.radius) {
		// add energies linearly
		obj_player.khir = min(100, obj_player.khir + khir);
		obj_player.ferr = min(100, obj_player.ferr + ferr);
		obj_player.yohg = min(100, obj_player.yohg + yohg);
		
		//obj_player.hp -= 20;
		obj_player.fusions += 1;
		obj_player.rotation_speed = 0.2;
		
		if(obj_player.fusions > 14){
			obj_player.tier = 2;
		} else if(obj_player.fusions > 4) {
			obj_player.tier = 1;
		}
		
		obj_player.hp -= 10;
		
		obj_player.join_limit = floor(obj_player.ferr / 20);
		
		if (enemy_energy != 0)	instance_deactivate_object(enemy_energy);
		instance_deactivate_object(obj_action);
		instance_destroy();
	}
	// else still moving
	else {
		move_towards_point(obj_player.x, obj_player.y, 1);
		rotation_speed = 2;
		obj_player.rotation_speed = 2;
	}
}

// getting close to player to "join"
else if(joining && !joined) {
	if (point_distance(obj_player.x, obj_player.y, x, y) < obj_player.radius + 5){
		joined = true;
		obj_player.joined += 1;
	} 
	else {
		move_towards_point(obj_player.x, obj_player.y, 1);
	}
}

else if(joined) {
	//
	if(shot) {
		motion_set(point_direction(start_x, start_y ,target_x, target_y), 8);
	}
	// rotating around player
	// TODO: fix the weird animation
	else{ 
		x = obj_player.x + lengthdir_x(obj_player.radius + 15, image_angle);
		y = obj_player.y + lengthdir_y(obj_player.radius + 15, image_angle);
		rotation_speed = 1;
	}
}