x_val = argument0
y_val = argument1
spd = argument2
radius = argument3
clockwise = argument4

enemy_spawn = instance_create_depth(x_val,y_val,0,obj_enemy_destroy_rotate)

enemy_spawn.radius = radius
enemy_spawn.rotation_speed = spd
enemy_spawn.clockwise = clockwise