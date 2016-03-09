check_slot = argument0
count = argument1
if(check_slot.up_left!=noone){
    if(check_slot.up_left.piece!=noone){
        if(check_slot.up_left.piece.color == check_slot.piece.color){
            count++
            count = scpt_check_up_left(check_slot.up_left,count)
        }
    }
}
return count
