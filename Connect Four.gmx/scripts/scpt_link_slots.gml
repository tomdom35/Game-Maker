width = sprite_get_width(obj_slot)
for(i = 0; i< ds_list_size(board);i++){
    cur_col = board[|i]
    for(j = 1; j< ds_list_size(cur_col);j++){
        cur_slot = cur_col[|j]
        cur_slot.up_left = instance_position(cur_slot.x-width,cur_slot.y-width,obj_slot)
        cur_slot.up = instance_position(cur_slot.x,cur_slot.y-width,obj_slot)
        cur_slot.up_right = instance_position(cur_slot.x+width,cur_slot.y-width,obj_slot)
        cur_slot.right = instance_position(cur_slot.x+width,cur_slot.y,obj_slot)
        cur_slot.down_right = instance_position(cur_slot.x+width,cur_slot.y+width,obj_slot)
        cur_slot.down = instance_position(cur_slot.x,cur_slot.y+width,obj_slot)
        cur_slot.down_left = instance_position(cur_slot.x-width,cur_slot.y+width,obj_slot)
        cur_slot.left = instance_position(cur_slot.x-width,cur_slot.y,obj_slot)
    }
}
