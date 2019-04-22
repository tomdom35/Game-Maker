//This script is used to set a bool value on blocks that are touching the perimeter enemy object, so if
//a destroy enemy object comes into contact with a block that is surrounding the perimeter enemy, it will
//not destroy the block. (If the surrounding blocks are destroyed, the perimeter enemy is stuck in an
//endless loop)

//set all previous surrounding blocks to false for touching the perimeter enemy object
if(instance_exists(top_block)){
	top_block.touching_perimeter_enemy = false
}
if(instance_exists(bottom_block)){
	bottom_block.touching_perimeter_enemy = false
}
if(instance_exists(left_block)){
	left_block.touching_perimeter_enemy = false
}
if(instance_exists(right_block)){
	right_block.touching_perimeter_enemy = false
}
if(instance_exists(top_left_block)){
	top_left_block.touching_perimeter_enemy = false
}
if(instance_exists(bottom_left_block)){
	bottom_left_block.touching_perimeter_enemy = false
}
if(instance_exists(top_right_block)){
	top_right_block.touching_perimeter_enemy = false
}
if(instance_exists(bottom_right_block)){
	bottom_right_block.touching_perimeter_enemy = false
}

//get all of the surrounding blocks
top_block = instance_position(x, y - s, obj_block)
bottom_block = instance_position(x, y + s, obj_block)
left_block = instance_position(x - s, y, obj_block)
right_block = instance_position(x + s, y, obj_block)
top_left_block = instance_position(x - s, y - s, obj_block)
bottom_left_block = instance_position(x - s, y + s, obj_block)
top_right_block = instance_position(x + s, y - s, obj_block)
bottom_right_block = instance_position(x + s, y + s, obj_block)

//set all surrounding blocks to true for touching the perimeter enemy object
if(instance_exists(top_block)){
	top_block.touching_perimeter_enemy = true
}
if(instance_exists(bottom_block)){
	bottom_block.touching_perimeter_enemy = true
}
if(instance_exists(left_block)){
	left_block.touching_perimeter_enemy = true
}
if(instance_exists(right_block)){
	right_block.touching_perimeter_enemy = true
}
if(instance_exists(top_left_block)){
	top_left_block.touching_perimeter_enemy = true
}
if(instance_exists(bottom_left_block)){
	bottom_left_block.touching_perimeter_enemy = true
}
if(instance_exists(top_right_block)){
	top_right_block.touching_perimeter_enemy = true
}
if(instance_exists(bottom_right_block)){
	bottom_right_block.touching_perimeter_enemy = true
}