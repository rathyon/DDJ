var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

var energy;

draw_set_font(fnt_energy);
draw_set_color(c_white);
draw_set_halign(fa_right);

energy = "X Energy: " + string(x_energy) + "\n" + "Y Energy: " + string(y_energy) + "\n" + "Z Energy: " + string(z_energy);


draw_text(cx + cw, cy, energy);