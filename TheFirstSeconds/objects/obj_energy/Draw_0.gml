var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

var energy;

draw_set_font(fnt_energy);
draw_set_color(c_white);
draw_set_halign(fa_left);

with (obj_player) {
	energy = "Khir: " + string(khir) + "\n" + "Ferr: " + string(ferr) + "\n" + "Yohg: " + string(yohg) + "\n" + "Stability: " + string(hp) + "%" ;
}

draw_text(cx, cy, energy);