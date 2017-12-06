var min_speed = 0.5;

if (keyboard_check(ord("W"))){ 
	khir = max(0, khir - 0.015);
	move_speed = (khir / 10) + min_speed;
	rotation_speed = (khir / 150) + 0.2;
	vspeed = -move_speed;
}
if (keyboard_check(ord("S"))){
	khir = max(0, khir - 0.015);
	move_speed = (khir / 10) + min_speed;
	rotation_speed = (khir / 150) + 0.2;
	vspeed = move_speed;
}
if (keyboard_check(ord("D"))){
	khir = max(0, khir - 0.015);
	move_speed = (khir / 10) + min_speed;
	rotation_speed = (khir / 150) + 0.2;
	hspeed = move_speed;
}
if (keyboard_check(ord("A"))){
	khir = max(0, khir - 0.015);
	move_speed = (khir / 10) + min_speed;
	rotation_speed = (khir / 150) + 0.2;
	hspeed = -move_speed;
}
friction = khir*0.01;

// update stat display
stat_display.khir = khir;
stat_display.ferr = ferr;
stat_display.yohg = yohg;
stat_display.hp = hp;

image_xscale = 1 + (1 * tier);
image_yscale = image_xscale;

//radius = max(30, (khir + ferr + yohg) / 2);
radius = 30 + (6 * tier);

// on death, restart 
if (hp <= 0)
{
    restart = true;
	game_over_message = "You became too unstable! Press space to restart."
}

if(restart){
	
	instance_destroy(obj_player);
	instance_deactivate_all(true);
	
	
	var game_over = instance_create_layer(x, y , "Instances", obj_gameover);
	game_over.message = game_over_message;
	
	//room_instance_add(obj_gameover, x, y , obj_gameover);	
    
}

//prevent it from going out of bounds
x = clamp(x, sprite_width/2, room_width-sprite_width/2);
y = clamp(y, sprite_height/2, room_height-sprite_height/2);

// rotation
image_angle += rotation_speed % 360;