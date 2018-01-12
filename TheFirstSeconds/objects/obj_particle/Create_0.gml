// for animation purposes
image_alpha = 0;


randomize();

// 1 = Khir particle
// 2 = Ferr particle
// 3 = Yohg particle
type = irandom_range(0, 100);

// size tier
size_rng = irandom_range(0, 100); 
// 75% of particles are tier 0
// 15% are tier 1
// 5% are tier 2
tier = 0;

if(size_rng > 75) {
	tier = 1;
}
else if(size_rng > 95) {
	tier = 2;
}

//giving energies based on type
if(type < 50){
	khir = 20 + tier * 20;
	ferr = 0;
	yohg = 0;
}
else if (type < 75){
	khir = 0;
	ferr = 20 + tier * 20;
	yohg = 0;
}
else if (type >= 75) {
	khir = 0;
	ferr = 0;
	yohg = 20 + tier * 20;
}

image_angle = random(360);

// energy based attribute: speed/rotation speed
move_speed = 0.1 + (khir / 10) * 0.4;
rotation_speed = (khir / 30) * 1.6;

// random movement set at spawn
motion_set(random(360),move_speed);

stat_display = 0;

spawned = false;

//fusion variables
fusing = false;
fuse = false;
fuse_distance = 100;

// joining variables
joining = false;
joined = false;
shot = false;
target_x = 0;
target_y = 0;
start_x = 0;
start_y = 0;


analyze = false;
join = false;
attack = false;

analyze_distance = 150;

// assigning sprite based on type
if(room = 2) sprite_index = spr_shot;
else if(type >= 50 && type < 75) sprite_index = spr_y;
else if(type >= 75) sprite_index = spr_z;

error_message = "";
error_display = false;
error_timer = 60;
alarm[0] = error_timer;