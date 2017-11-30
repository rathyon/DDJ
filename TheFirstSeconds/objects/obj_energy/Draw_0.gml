var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

var energy = "";
var draw_x = cx + cw;

draw_set_font(fnt_energy);
draw_set_color(c_white);
draw_set_halign(text_align);

energy += "Khir: " + string(khir) + "\n";
energy += "Ferr: " + string(ferr) + "\n";
energy += "Yohg: " + string(yohg) + "\n";
if (player) {
	energy += "Stability: " + string(hp) + "%";
	draw_x = cx;
}

draw_text(draw_x, cy, energy);