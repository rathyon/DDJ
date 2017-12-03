draw_set_font(fnt_energy);
draw_set_color(c_white);
draw_set_halign(text_align);

message = "A black hole killed you! Press space to restart.";

draw_self();

draw_text(x-295, y, message);