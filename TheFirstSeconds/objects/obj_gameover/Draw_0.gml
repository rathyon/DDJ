var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
var ch = camera_get_view_height(view_camera[0]);

draw_set_font(fnt_energy);
draw_set_color(c_white);
draw_set_halign(text_align);

layer_force_draw_depth(true, 20);

//message = "A black hole killed you! Press space to restart.";

x = cx + 525
y = cy + 375

draw_self();

draw_text(cx+225, cy+425, message);
