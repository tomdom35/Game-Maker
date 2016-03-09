check_slot = argument0
count = argument1
if(check_slot.left!=noone){
    if(check_slot.left.piece!=noone){
        if(check_slot.left.piece.color == check_slot.piece.color){
            count++
            count = scpt_check_left(check_slot.left,count)
        }
    }
}
return count
