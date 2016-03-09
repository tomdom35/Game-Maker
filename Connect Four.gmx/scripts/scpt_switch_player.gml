turn*=-1
switch_player = false
xVal = floor(mouse_x/piece_width) * piece_width
if(turn>0){
    piece = instance_create(xVal,0,obj_red)
    piece.turn = true
}
else{
    piece = instance_create(xVal,0,obj_black)
    piece.turn = true
}

if(end_game){
    scpt_end_game()
}
