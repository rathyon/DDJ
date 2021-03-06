//khir is the stat for speed and rotation
khir = 50;
//ferr levels say how many particles you can aggregate
ferr = 10;
//yogh is consumed every time you shoot (this attribute is subject to change)
// max is 5 shots accumulated
yohg = 10;

// the main particle at the start is completely healthy
// as it fuses and shoots and interacts with everything else it drops
// but can be restored slowly by "taking a break" and joining with
// "health pack" particles
hp = 100;

// size tier; max is 2
tier = 0;

// number of fusions
fusions = 0;

// number of joined particles
joined = 0;
// max number of joined particles; max is 5
join_limit = 0;
//list with joined particles
joined_particles = ds_list_create();

move_speed = (khir / 30);

//slowness caused by energy field
slow_factor = 0;

rotation_speed = (khir / 150) + 0.2;

friction = 0.1;

// useful for the aggregated particles' movement around the player
radius = 30;

stat_display = instance_create_layer(x, y, "Instances", obj_energy);
stat_display.khir = khir;
stat_display.ferr = ferr;
stat_display.yohg = yohg;
stat_display.hp = hp;
stat_display.text_align = fa_left;
stat_display.player = true;

restart = false;
game_over_message = "";