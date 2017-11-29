image_alpha = 0;
randomize();
khir = 100;
ferr = irandom(50);
yohg = irandom(50);
image_angle = random(360);

// energy based attribute: speed/rotation speed
move_speed = 0.1 + (khir / 150) * 0.4;
rotation_speed = (khir / 150);

motion_set(random(360),move_speed);
enemy_energy = 0;
spawned = false;
//fusing = false;
//joining = false;
//joined = false;
shot = false;
target_x = 0;
target_y = 0;

attack_distance = 300;
analyze_distance = 500;

// checking what's the biggest energy level and assigning it a sprite based on it
var max_energy = max(khir, ferr, yohg);

if( max_energy == ferr) sprite_index = spr_y;
else if( max_energy == yohg) sprite_index = spr_z;
