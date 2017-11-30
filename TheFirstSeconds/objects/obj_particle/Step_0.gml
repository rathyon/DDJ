
if (image_alpha < 1.0 && !spawned) {
	image_alpha += 0.02;
} else if (!spawned) {
	image_alpha = 1.0;
	spawned = true;
}
var khir_rate = khir / (khir + ferr + yohg);
var ferr_rate = ferr / (khir + ferr + yohg);
var yohg_rate = yohg / (khir + ferr + yohg);
image_blend = make_color_rgb(255*khir_rate, 255*ferr_rate, 255*yohg_rate);

image_xscale = (khir + ferr + yohg) / 500;
image_yscale = image_xscale;

image_angle += rotation_speed % 360;

if (fusing) {

	if (point_distance(obj_player.x, obj_player.y, x, y) < 30) {
		obj_player.khir = min(100, obj_player.khir + khir);
		obj_player.ferr = min(100, obj_player.ferr + ferr);
		obj_player.yohg = min(100, obj_player.yohg + yohg);
		obj_player.hp -= 20;
		with(obj_player){
			var max_val = max(khir, ferr, yohg);
			if (max_val == khir) sprite_index = spr_x;
			else if (max_val == ferr) sprite_index = spr_y;
			else sprite_index = spr_z;
			rotation_speed = 0.2;
		}
		if (enemy_energy != 0)	instance_deactivate_object(enemy_energy);
		instance_deactivate_object(obj_action);
		instance_destroy();
	}
	else {
		move_towards_point(obj_player.x, obj_player.y, 1);
		rotation_speed = 2;
		with(obj_player) rotation_speed = 2;
	}
}
else if(joining && !joined) {
	if (point_distance(obj_player.x, obj_player.y, x, y) < obj_player.radius + 5){
		joined = true;
	} 
	else {
		move_towards_point(obj_player.x, obj_player.y, 1);
	}
}
else if(joined) {
	if(shot) {
		move_towards_point(target_x, target_y, 2);
	}
	else{ 
		x = obj_player.x + lengthdir_x(obj_player.radius + 5, image_angle);
		y = obj_player.y + lengthdir_y(obj_player.radius + 5, image_angle);
	}
}