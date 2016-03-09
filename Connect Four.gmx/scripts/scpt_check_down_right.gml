check_slot = argument0
count = argument1
if(check_slot.down_right!=noone){
    if(check_slot.down_right.piece!=noone){
        if(check_slot.down_right.piece.color == check_slot.piece.color){
            count++
            count = scpt_check_down_right(check_slot.down_right,count)
        }
    }
}
return count
