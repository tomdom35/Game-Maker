direction += rotation_speed
direction = direction mod 360
enemy.x = x + floor(lengthdir_x(radius,direction))
enemy.y = y + floor(lengthdir_y(radius,direction))