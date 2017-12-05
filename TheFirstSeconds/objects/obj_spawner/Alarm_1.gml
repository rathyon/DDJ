/// @description Moving enemy spawning

var new_enemy = instance_create_layer(random(room_width), random(room_height), "Instances", obj_enemy_red);
new_enemy.moving = true;

alarm[1] = enemy_spawnrate;