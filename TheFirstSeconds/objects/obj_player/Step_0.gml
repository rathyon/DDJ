if (keyboard_check(ord("W"))) vspeed = -move_speed;
if (keyboard_check(ord("S"))) vspeed = move_speed;
if (keyboard_check(ord("D"))) hspeed = move_speed;
if (keyboard_check(ord("A"))) hspeed = -move_speed;

x = clamp(x, sprite_width/2, room_width-sprite_width/2);
y = clamp(y, sprite_height/2, room_height-sprite_height/2);

var x_energy_rate = x_energy / (x_energy + y_energy + z_energy);
var y_energy_rate = y_energy / (x_energy + y_energy + z_energy);
var z_energy_rate = z_energy / (x_energy + y_energy + z_energy);

image_blend = make_color_rgb(255*x_energy_rate, 255*y_energy_rate, 255*z_energy_rate);

image_xscale = min(2, (x_energy + y_energy + z_energy) / 500);
image_yscale = image_xscale;

image_angle += rotation_speed % 360;