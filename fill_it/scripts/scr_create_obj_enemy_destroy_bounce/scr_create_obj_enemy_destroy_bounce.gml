//spawn instance of obj_enemy_destroy_bounce

//spawn position in room
x_val = argument0
y_val = argument1

//speed
spd = argument2

//direction
dir = argument3
enemy_spawn = instance_create_depth(x_val,y_val,0,obj_enemy_destroy_bounce)

//set speed
enemy_spawn.vspeed = spd
enemy_spawn.hspeed = spd

//set direction
enemy_spawn.direction = dir