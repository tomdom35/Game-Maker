check_slot = argument0
count = argument1
if(check_slot.down_left!=noone){
    if(check_slot.down_left.piece!=noone){
        if(check_slot.down_left.piece.color == check_slot.piece.color){
            count++
            count = scpt_check_down_left(check_slot.down_left,count)
        }
    }
}
return count
