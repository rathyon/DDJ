image_alpha = 0;
randomize();
x_energy = irandom(150);
y_energy = irandom(150);
z_energy = irandom(150);
image_angle = random(360);

// energy based attribute: speed/rotation speed
move_speed = 0.1 + (x_energy / 150) * 0.4;
rotation_speed = (x_energy / 150) * 1.6;

motion_set(random(360),move_speed);
enemy_energy = 0;
spawned = false;
fusing = false;

fuse_distance = 100;
analyze_distance = 300;

// checking what's the biggest energy level and assigning it a sprite based on it
var max_energy = max(x_energy, y_energy, z_energy);

if( max_energy == y_energy) sprite_index = spr_y;
else if( max_energy == z_energy) sprite_index = spr_z;
