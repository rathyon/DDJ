var button_offset = 15;

fuse = instance_create_layer(x-button_offset, y-button_offset, "Instances", obj_action);
fuse.enabled = true;
fuse.trigger_distance = fuse_distance;
fuse.sprite_index = spr_fuse;
fuse.direction = direction;
fuse.speed = speed;

//analyze = instance_create_layer(x+button_offset, y-button_offset, "Instances", obj_action);
//analyze.enabled = true;
//analyze.trigger_distance = analyze_distance;
//analyze.sprite_index = spr_analyze;
//analyze.direction = direction;
//analyze.speed = speed;

join = instance_create_layer(x-button_offset, y+button_offset, "Instances", obj_action);
join.enabled = true;
join.trigger_distance = fuse_distance;
join.joined = joined;
join.sprite_index = spr_join;
join.direction = direction;
join.speed = speed;

attack = instance_create_layer(x+button_offset, y+button_offset, "Instances", obj_action);
attack.enabled = false;
attack.sprite_index = spr_attack;
attack.direction = direction;
attack.speed = speed;