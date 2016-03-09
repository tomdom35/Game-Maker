check_slot = argument0
count = argument1
if(check_slot.up!=noone){
    if(check_slot.up.piece!=noone){
        if(check_slot.up.piece.color == check_slot.piece.color){
            count++
            count = scpt_check_up(check_slot.up,count)
        }
    }
}
return count
