instance_create_layer(x-25, y-25, "Instances", obj_fuse);
obj_fuse.direction = direction;
obj_fuse.speed = speed;

instance_create_layer(x+25, y-25, "Instances", obj_analyze);
obj_analyze.direction = direction;
obj_analyze.speed = speed;