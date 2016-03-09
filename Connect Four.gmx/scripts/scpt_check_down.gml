check_slot = argument0
count = argument1
if(check_slot.down!=noone){
    if(check_slot.down.piece!=noone){
        if(check_slot.down.piece.color == check_slot.piece.color){
            count++
            count = scpt_check_down(check_slot.down,count)
        }
    }
}
return count
