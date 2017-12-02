var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);


var draw_x = cx + cw;

draw_set_font(fnt_energy);
draw_set_color(c_white);
draw_set_halign(text_align);

message += "A black hole killed you! Press space to restart.";


draw_text(draw_x, cy, message);

instance_position(room_width/2, room_height/2, obj_gameover);