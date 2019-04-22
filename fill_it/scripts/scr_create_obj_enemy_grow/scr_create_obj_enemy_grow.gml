x_val = argument0
y_val = argument1
alternate = argument2 //whether to alternate between growing horz and vert
spd = argument3 //how many blocks to grow by
max_size = argument4 //max growth length
rotate = argument5
rotate_speed = argument6
start_horz = argument7 //whether to start growing horz or vert

enemy_spawn = instance_create_depth(x_val,y_val,0,obj_enemy_grow)

enemy_spawn.max_size = max_size
enemy_spawn.increment = spd
enemy_spawn.alternate = alternate
enemy_spawn.rot = rotate
enemy_spawn.rot_speed = rotate_speed
enemy_spawn.grow_horz = start_horz
enemy_spawn.grow_vert = !start_horz
