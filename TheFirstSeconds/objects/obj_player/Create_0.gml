//khir is the stat for speed and rotation
khir = 50;
//ferr levels say how many particles you can aggregate
ferr = 10;
//yogh is consumed every time you shoot (this attribute is subject to change)
yohg = 10;

// the main particle at the start is completely healthy
// as it fuses and shoots and interacts with everything else it drops
// but can be restored slowly by "taking a break" and joining with
// "health pack" particles
hp = 100;

move_speed = (khir / 30) + 1;

rotation_speed = (khir / 150) + 0.2;

friction = 0.05;

// useful for the aggregated particles' movement around the player
radius = 30;

energy = instance_create_layer(x, y, "Instances", obj_energy);
energy.khir = khir;
energy.ferr = ferr;
energy.yohg = yohg;
energy.hp = hp;
energy.text_align = fa_left;
energy.player = true;