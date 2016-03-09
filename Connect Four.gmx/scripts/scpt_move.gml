width = sprite_get_width(spr_slot)
xVal = floor(mouse_x/width) * width
yVal = 0

x = xVal
y = yVal

if(mouse_check_button_pressed(mb_left)){
    obj_controler.place = true
}
