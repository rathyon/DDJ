var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

draw_set_font(fnt_energy);
draw_set_color(c_red);
draw_set_halign(fa_center);


draw_self();

if (error_display) {
	depth = -5; //bad solution, prevents error message from appearing behind object but alters the depth of the object itself
	draw_text(cx + cw/2, cy + 200, error_message);
}

depth = 0;
