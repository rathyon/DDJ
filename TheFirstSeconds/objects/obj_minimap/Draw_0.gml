// height, width set in CREATE METHOD
xp = view_xview[0] + 800
yp = view_yview[0] + 550

draw_set_alpha(0.5)
draw_rectangle(xp, yp, xp+width, yp+height, false)

//draw player
draw_set_color(c_purple)
draw_set_alpha(0.8)
var wherex = xp + obj_player.x*(xscale)
var wherey = yp + obj_player.y*(yscale)
draw_circle(wherex, wherey, 2, false)

//draw particles
draw_set_color(c_yellow)
draw_set_alpha(0.8)
for (i=0; i < instance_number(obj_particle); i++) {
	particleID = instance_find(obj_particle, i)
	wherex = xp + particleID.x*(xscale)
	wherey = yp + particleID.y*(yscale)
	draw_circle(wherex, wherey, 2, false)
}

//draw goal


//draw enemies

//draw wormhole

//draw blackwhole



