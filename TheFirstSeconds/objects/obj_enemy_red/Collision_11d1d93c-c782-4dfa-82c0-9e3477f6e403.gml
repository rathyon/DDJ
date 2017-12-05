obj_player.hp -= 3;

obj_player.khir = max(0, obj_player.khir - 4);
obj_player.yohg = max(0, obj_player.yohg - 4);

var bounce_dir = point_direction(x,y,obj_player.x, obj_player.y);

with(obj_player){
    motion_set(bounce_dir, 6);
}