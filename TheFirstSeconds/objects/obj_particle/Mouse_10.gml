var button_offset = 15;

fuse = instance_create_layer(x-button_offset, y-button_offset, "Instances", obj_action);
fuse.enabled = true;
fuse.trigger_distance = fuse_distance;
fuse.trigger = obj_player.tier >= tier;
fuse.sprite_index = spr_actions;
fuse.image_index = 1;
fuse.image_speed = 0;
fuse.image_xscale *= 0.3;
fuse.image_yscale *= 0.3;
fuse.direction = direction;
fuse.speed = speed;

//analyze = instance_create_layer(x+button_offset, y-button_offset, "Instances", obj_action);
//analyze.enabled = true;
//analyze.trigger_distance = analyze_distance;
//analyze.sprite_index = spr_analyze;
//analyze.direction = direction;
//analyze.speed = speed;

join = instance_create_layer(x+button_offset, y-button_offset, "Instances", obj_action);
join.enabled = true;
join.trigger_distance = fuse_distance;
join.joined = joined;
join.trigger = (obj_player.tier >= tier && obj_player.join_limit - obj_player.joined > 0);
join.sprite_index = spr_actions;
join.image_index = 2;
join.image_speed = 0;
join.image_xscale *= 0.3;
join.image_yscale *= 0.3;
join.direction = direction;
join.speed = speed;

//attack = instance_create_layer(x+button_offset, y+button_offset, "Instances", obj_action);
//attack.enabled = false;
//attack.sprite_index = spr_attack;
//attack.direction = direction;
//attack.speed = speed;


//ANALYZE
if (point_distance(obj_player.x, obj_player.y, x, y) < analyze_distance) {
	
	if(stat_display != 0){
		instance_activate_object(stat_display);
		stat_display.khir = khir;
		stat_display.ferr = ferr;
		stat_display.yohg = yohg;
		stat_display.text_align = fa_right;
		stat_display.player = false;
	}else{
		stat_display = instance_create_layer(x, y, "Instances", obj_energy);
		stat_display.khir = khir;
		stat_display.ferr = ferr;
		stat_display.yohg = yohg;
		stat_display.text_align = fa_right;
		stat_display.player = false;
	}
	
}else{
	if (stat_display != 0){
		instance_deactivate_object(stat_display);
	}
}
