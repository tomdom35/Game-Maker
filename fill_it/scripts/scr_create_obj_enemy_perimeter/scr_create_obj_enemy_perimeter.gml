x_val = argument0
y_val = argument1
spd = argument2

enemy_spawn = instance_create_depth(x_val,y_val,0,obj_enemy_perimeter)

enemy_spawn.vspeed = spd

