horz = scpt_check_right(slot,1) + scpt_check_left(slot,1)
if(horz>4){
    return true
}
vert = scpt_check_down(slot,1)
if(vert>=4){
    return true
}
diag1 = scpt_check_up_right(slot,1) + scpt_check_down_left(slot,1)
if(diag1>4){
    return true
}
diag2 = scpt_check_up_left(slot,1) + scpt_check_down_right(slot,1)
if(diag2>4){
    return true
}
