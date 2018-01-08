var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

var energy = "";
var draw_x = cx + cw;

draw_set_font(fnt_energy);
draw_set_color(c_white);
draw_set_halign(text_align);

energy += "Speed: " + string(khir) + "\n";
energy += "Capacity: " + string(ferr) + "\n";
energy += "Discharge: " + string(yohg) + "\n";
if (player) {
	energy += "Stability: " + string(hp) + "%" + "\n";
	//debugging
	energy += "\n";
	energy += "Joined :" + string(obj_player.joined);
	draw_x = cx;
}

var bar_y = cy;

//Speed bar
draw_healthbar(draw_x, bar_y, draw_x + 300, bar_y + 30, obj_player.khir, c_black, c_maroon, c_red, 0, false, true);

//Join limit bars: each filled bar = current join limit
bar_y += 30;
var ferr_counter = obj_player.ferr;
for(var i = 0; i < 5; i++){
	if(ferr_counter > 20){
		draw_healthbar(draw_x + (i*40), bar_y, draw_x + 30 + (i*40), bar_y + 30, 100, c_black, c_lime, c_lime, 0, false, true);
		ferr_counter -= 20;
		continue;
	}
	else{
		draw_healthbar(draw_x + (i*40), bar_y, draw_x + 30 + (i*40), bar_y + 30, ferr_counter * 5, c_black, c_lime, c_lime, 0, false, true);
		break;
	}
}

//Shooting fuel bars: each filled bar = 1 shot
bar_y += 30;
var yohg_counter = obj_player.yohg;
for(var i = 0; i < 5; i++){
	if(yohg_counter > 20){
		draw_healthbar(draw_x + (i*40), bar_y, draw_x + 30 + (i*40), bar_y + 30, 100, c_black, c_aqua, c_blue, 0, false, true);
		yohg_counter -= 20;
		continue;
	}
	else{
		draw_healthbar(draw_x + (i*40), bar_y, draw_x + 30 + (i*40), bar_y + 30, yohg_counter * 5, c_black, c_aqua, c_blue, 0, false, true);
		break;
	}
}

//HP bar
bar_y += 30;
draw_healthbar(draw_x, bar_y, draw_x + 300, bar_y + 30, obj_player.hp, c_black, c_red, c_green, 0, false, true);

draw_text(draw_x, cy, energy);

