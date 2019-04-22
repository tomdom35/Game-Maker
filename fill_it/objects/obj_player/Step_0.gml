if(!instance_position(x,y,obj_block)){
	if(!new){
		new = true
		new2 = true
		start_d = d
		start_d_x = x
		start_d_y = y
		d = 0
	}
}
else if(instance_position(x,y,obj_block).done){
	new = false
	if(new2){
		scr_fill_area()
	}
	new2 = false
}

//x and y values player was just at
old_y = y
old_x = x

//get surrounding blocks
left_block = instance_position(x - sp, y, obj_block)
right_block = instance_position(x + sp, y, obj_block)
above_block = instance_position(x, y - sp, obj_block)
below_block = instance_position(x, y + sp, obj_block)

//get surrounding corning blocks
below_left_block = instance_position(x - sp, y + sp, obj_block)
below_right_block = instance_position(x + sp, y + sp, obj_block)
above_left_block = instance_position(x - sp, y - sp, obj_block)
above_right_block = instance_position(x + sp, y - sp, obj_block)

//get block player is on
on_block = instance_position(x,y,obj_block)

//get directions player is blockd from moving
blocked_down = (y == room_height - sp) || (below_block && below_block.post)// || (on_block && on_block.done && left_block && left_block.done && right_block && right_block.done && below_block && below_block.done && below_left_block && below_left_block.done && below_right_block && below_right_block.done)
blocked_up = (y == grid_start_y) || (above_block && above_block.post)// || (on_block && on_block.done && left_block && left_block.done && right_block && right_block.done && above_block && above_block.done && above_left_block && above_left_block.done && above_right_block && above_right_block.done)
blocked_right = (x == room_width - sp) || (right_block && right_block.post)// || (on_block && on_block.done && below_block && below_block.done && right_block && right_block.done && above_block && above_block.done && above_right_block && above_right_block.done && below_right_block && below_right_block.done)
blocked_left = (x == grid_start_x) || (left_block && left_block.post)// || (on_block && on_block.done && below_block && below_block.done && left_block && left_block.done && above_block && above_block.done && above_left_block && above_left_block.done && below_left_block && below_left_block.done)

//move player down
if(keyboard_check_direct(vk_down) && !blocked_down){
	y += sp
	d = 1
	check_d = 3
	turn = start_d % 2 == 0
	
	scr_end_of_player_movement()
}

//move player up
else if(keyboard_check_direct(vk_up) && !blocked_up){
	y -= sp
	d = 3
	check_d = 1
	turn = start_d % 2 == 0

	scr_end_of_player_movement()
}

//move player left
else if(keyboard_check_direct(vk_left) && !blocked_left){
	x -= sp
	d = 2
	check_d = 4
	turn = start_d % 2 == 1
	scr_end_of_player_movement()
}

//move player right
else if(keyboard_check_direct(vk_right) && !blocked_right){
	x += sp
	d = 4
	check_d = 2
	turn = start_d % 2 == 1
	
	scr_end_of_player_movement()	
}