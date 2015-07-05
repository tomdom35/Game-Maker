instance_create(32,64,obj_mazeBlock);
instance_create(32,96,obj_mazeBlock);
xVar = 96;
yVar = 32;

if(place_meeting(xVar-1,yVar,obj_mazeBlock)){
    canMoveLeft = false;
    canMoveRight = true;
    canMoveDown = true;
    canMoveUp = true;
}
else if(place_meeting(xVar,yVar-1,obj_mazeBlock)){
    canMoveUp = false;
    canMoveDown = true;
    canMoveLeft = true;
    canMoveRight = true;
}
else if(place_meeting(xVar+32,yVar,obj_mazeBlock)){
    canMoveRight = false;
    canMoveLeft = true;
    canMoveUp = true;
    canMoveDown = true;
}

else if(place_meeting(xVar,yVar+32,obj_mazeBlock)){
    canMoveDown = false;
    canMoveUp = true;
    canMoveRight = true;
    canMoveLeft = true;
}

if(xVar+64>=room_width) canMoveRight = false;
if(xVar-64<=room_width) canMoveLeft = false;
if(yVar+64>=room_height) canMoveDown = false;
if(yVar-64<=room_height)canMoveUp = false;

direct = round(random(4))
if(direct==0){
    if(canMoveUp){
        yVar-=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
    else if(canMoveDown){
        yVar+=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
    else if(canMoveRight){
        xVar+=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
    else if(canMoveLeft){
        xVar-=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
}
else if(direct==1){
    if(canMoveDown){
        yVar+=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
    else if(canMoveRight){
        xVar+=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
    else if(canMoveLeft){
        xVar-=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
    else if(canMoveUp){
        yVar-=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
}
else if(direct==2){
    if(canMoveRight){
        xVar+=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
    else if(canMoveLeft){
        xVar-=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
    else if(canMoveUp){
        yVar-=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
    else if(canMoveDown){
        yVar+=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
}
else if(direct==3){
    if(canMoveLeft){
        xVar-=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
    else if(canMoveUp){
        yVar-=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
    else if(canMoveDown){
        yVar+=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
    else if(canMoveRight){
        xVar+=32;
        instance_create(xVar,yVar,obj_mazeBlock);
    }
}
//for(blockCount = round(random(8));blockCount>0;blockCount--){}

