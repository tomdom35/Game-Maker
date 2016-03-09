check_slot = argument0
count = argument1
if(check_slot.right!=noone){
    if(check_slot.right.piece!=noone){
        if(check_slot.right.piece.color == check_slot.piece.color){
            count++
            count = scpt_check_right(check_slot.right,count)
        }
    }
}
return count
