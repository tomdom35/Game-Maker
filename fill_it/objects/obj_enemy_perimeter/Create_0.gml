//speed
s = 16

vspeed = s
hspeed = 0

//setting the blocks surrounding the object
top_block = instance_position(x, y - s, obj_block)
bottom_block = instance_position(x, y + s, obj_block)
left_block = instance_position(x - s, y, obj_block)
right_block = instance_position(x + s, y, obj_block)

top_left_block = instance_position(x - s, y - s, obj_block)
bottom_left_block = instance_position(x - s, y + s, obj_block)
top_right_block = instance_position(x + s, y - s, obj_block)
bottom_right_block = instance_position(x + s, y + s, obj_block)

//set grid start values
scr_set_grid_start_values()

//set room grid position for enemy
scr_set_grid_position_values()