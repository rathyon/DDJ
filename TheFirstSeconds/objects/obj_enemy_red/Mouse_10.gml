var button_offset = 15;

fuse = instance_create_layer(x-button_offset, y-button_offset, "Instances", obj_action);
fuse.enabled = false;
fuse.sprite_index = spr_fuse;
fuse.direction = direction;
fuse.speed = speed;

analyze = instance_create_layer(x+button_offset, y-button_offset, "Instances", obj_action);
analyze.enabled = true;
analyze.trigger_distance = analyze_distance;
analyze.sprite_index = spr_analyze;
analyze.direction = direction;
analyze.speed = speed;

join = instance_create_layer(x-button_offset, y+button_offset, "Instances", obj_action);
join.enabled = false;
join.sprite_index = spr_join;
join.direction = direction;
join.speed = speed;

attack = instance_create_layer(x+button_offset, y+button_offset, "Instances", obj_action);
attack.enabled = true;
attack.trigger_distance = attack_distance;
attack.sprite_index = spr_attack;
attack.direction = direction;
attack.speed = speed;