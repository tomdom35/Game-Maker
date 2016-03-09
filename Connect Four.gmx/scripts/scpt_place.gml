place = false
xVal = piece.x/piece_width
col = board[|xVal]
loc = col[|0] - 1
col[|0] = loc
if(loc>0){
    slot = col[|loc]
    piece.x = slot.x
    piece.y = slot.y
    slot.piece = piece
    return true
}
else{
    return false
}
