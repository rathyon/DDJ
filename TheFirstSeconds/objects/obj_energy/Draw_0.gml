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
	energy += "Stability: " + string(hp) + "%" + "\n";
	//debugging
	energy += "Join Limit: " + string(obj_player.join_limit) + "\n";
	energy += "Joined :" + string(obj_player.joined);
	draw_x = cx;
}

var bar_y = cy;

draw_healthbar(draw_x, bar_y, draw_x + 400, bar_y + 30, obj_player.khir, c_black, c_maroon, c_red, 0, false, true);

bar_y += 30;
draw_healthbar(draw_x, bar_y, draw_x + 400, bar_y + 30, obj_player.ferr, c_black, c_lime, c_green, 0, false, true);

bar_y += 30;
draw_healthbar(draw_x, bar_y, draw_x + 400, bar_y + 30, obj_player.yohg, c_black, c_aqua, c_blue, 0, false, true);

draw_text(draw_x, cy, energy);

