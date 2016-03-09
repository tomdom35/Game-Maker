width = sprite_get_width(spr_slot)
height = sprite_get_height(spr_slot)
size = 7

for(i=0;i<size;i++){
    var list = ds_list_create()
    ds_list_add(list,size)
    for(j=1;j<size;j++){
        slot = instance_create(i*width,j*height,obj_slot)
        ds_list_add(list,slot)
    }
    ds_list_add(board,list)
}
