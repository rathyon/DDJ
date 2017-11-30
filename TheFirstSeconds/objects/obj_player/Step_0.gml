if (keyboard_check(ord("W"))){ 
	khir = max(0, khir - 0.1);
	move_speed = (khir / 30) + 1;
	rotation_speed = (khir / 150) + 0.2;
	vspeed = -move_speed;
}
if (keyboard_check(ord("S"))){
	khir = max(0, khir - 0.1);
	move_speed = (khir / 30) + 1;
	rotation_speed = (khir / 150) + 0.2;
	vspeed = move_speed;
}
if (keyboard_check(ord("D"))){
	khir = max(0, khir - 0.1);
	move_speed = (khir / 30) + 1;
	rotation_speed = (khir / 150) + 0.2;
	hspeed = move_speed;
}
if (keyboard_check(ord("A"))){
	khir = max(0, khir - 0.1);
	move_speed = (khir / 30) + 1;
	rotation_speed = (khir / 150) + 0.2;
	hspeed = -move_speed;
}

energy.khir = khir;
energy.ferr = ferr;
energy.yohg = yohg;

var x_energy_rate = khir / (khir + ferr + yohg);
var y_energy_rate = ferr / (khir + ferr + yohg);
var z_energy_rate = yohg / (khir + ferr + yohg);

image_blend = make_color_rgb(255*x_energy_rate, 255*y_energy_rate, 255*z_energy_rate);

image_xscale = min(2, (khir + ferr + yohg) / 90);
image_yscale = image_xscale;

radius = max(30, (khir + ferr + yohg) / 2);

if(hp <= 0){
	//fission
}

// slow regeneration
hp = min(100, hp + 0.02);

//prevent it from going out of bounds
x = clamp(x, sprite_width/2, room_width-sprite_width/2);
y = clamp(y, sprite_height/2, room_height-sprite_height/2);

// rotation
image_angle += rotation_speed % 360;