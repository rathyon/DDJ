// height, width set in CREATE METHOD
xp = camera_get_view_x(view_camera[0]) + 800;
yp = camera_get_view_y(view_camera[0]) + 550;

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(xp, yp, xp+width, yp+height, false);

//draw player
draw_set_color(c_silver);
draw_set_alpha(0.8);
var wherex = xp + obj_player.x*(xscale);
var wherey = yp + obj_player.y*(yscale);
draw_circle(wherex, wherey, 2, false);

//draw particles
draw_set_color(c_yellow);
draw_set_alpha(0.8);
for (i=0; i < instance_number(obj_particle); i++) {
	particleID = instance_find(obj_particle, i);
	wherex = xp + particleID.x*(xscale);
	wherey = yp + particleID.y*(yscale);
	draw_circle(wherex, wherey, 2, false);
}

//draw goal
draw_set_color(c_blue);
draw_set_alpha(0.8);
var wherex = xp + obj_exit.x*(xscale);
var wherey = yp + obj_exit.y*(yscale);
draw_rectangle(wherex, wherey, wherex + 2, wherey + 2, false);

//draw enemies
draw_set_color(c_red);
draw_set_alpha(0.8);
for (i=0; i < instance_number(obj_enemy_red); i++) {
	particleID = instance_find(obj_enemy_red, i);
	wherex = xp + particleID.x*(xscale);
	wherey = yp + particleID.y*(yscale);
	draw_circle(wherex, wherey, 2, false);
}

//draw wormhole
draw_set_color(c_aqua);
draw_set_alpha(0.8);
for (i=0; i < instance_number(obj_wormhole); i++) {
	wormholeID = instance_find(obj_wormhole, i);
	wherex = xp + wormholeID.x*(xscale);
	wherey = yp + wormholeID.y*(yscale);
	draw_rectangle(wherex, wherey, wherex + 2, wherey + 2, false);
}

//draw blackwhole



