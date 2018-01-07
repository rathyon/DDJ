image_angle = point_direction(obj_player.x, obj_player.y, obj_exit.x, obj_exit.y);

x = obj_player.x + lengthdir_x(obj_player.radius + 1, image_angle);
y = obj_player.y + lengthdir_y(obj_player.radius + 1, image_angle);
		
