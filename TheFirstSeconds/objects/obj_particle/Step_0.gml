
if (image_alpha < 1.0 && !spawned) {
	image_alpha += 0.02;
} else if (!spawned) {
	image_alpha = 1.0;
	spawned = true;
}
var x_energy_rate = x_energy / (x_energy + y_energy + z_energy);
var y_energy_rate = y_energy / (x_energy + y_energy + z_energy);
var z_energy_rate = z_energy / (x_energy + y_energy + z_energy);
image_blend = make_color_rgb(255*x_energy_rate, 255*y_energy_rate, 255*z_energy_rate);

image_xscale = (x_energy + y_energy + z_energy) / 500;
image_yscale = image_xscale;

image_angle += rotation_speed % 360;

if (fusing) {

	if (point_distance(obj_player.x, obj_player.y, x, y) < 30) {
		obj_player.x_energy += x_energy;
		obj_player.y_energy += y_energy;
		obj_player.z_energy += z_energy;
		with(obj_player){
			var max_val = max(x_energy, y_energy, z_energy);
			if (max_val == x_energy) sprite_index = spr_x;
			else if (max_val == y_energy) sprite_index = spr_y;
			else sprite_index = spr_z;
			rotation_speed = 0.2;
		}
		if (enemy_energy != 0)	instance_deactivate_object(enemy_energy);
		instance_deactivate_object(obj_fuse);
		instance_deactivate_object(obj_analyze);
		instance_destroy();
	}
	else {
		move_towards_point(obj_player.x, obj_player.y, 1);
		rotation_speed = 2;
		with(obj_player) rotation_speed = 2;
	}
}