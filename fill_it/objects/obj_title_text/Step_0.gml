//get random (x,y) position to spawn obj_title_box
box_x = random_range(box_x_min, box_x_max);
box_y = random_range(box_y_min, box_y_max);

instance_create_depth(box_x,box_y,-1,obj_title_box)