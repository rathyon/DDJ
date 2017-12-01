image_alpha = 0;
randomize();
image_angle = random(360);
//sprite_index = 1;
// energy based attribute: speed/rotation speed
move_speed = 0.7;
rotation_speed = 0.7;

motion_set(random(360),move_speed);
enemy_energy = 0;
spawned = false;
fusing = false;
joining = false;
joined = false;
shot = false;
target_x = 0;
target_y = 0;
fuse = false;
analyze = false;
join = false;
attack = false;

fuse_distance = 100;
analyze_distance = 300;


