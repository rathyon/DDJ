if (point_distance(obj_player.x, obj_player.y, x, y) < analyze_distance) {
	stat_display = instance_create_layer(x, y, "Instances", obj_energy);
	stat_display.khir = khir;
	stat_display.ferr = ferr;
	stat_display.yohg = yohg;
	stat_display.text_align = fa_right;
	stat_display.player = false;
}