check_slot = argument0
count = argument1
if(check_slot.up_right!=noone){
    if(check_slot.up_right.piece!=noone){
        if(check_slot.up_right.piece.color == check_slot.piece.color){
            count++
            count = scpt_check_up_right(check_slot.up_right,count)
        }
    }
}
return count
