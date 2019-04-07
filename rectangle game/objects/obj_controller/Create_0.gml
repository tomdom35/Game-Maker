/// @description Insert description here
// You can write your code in this editor
randomize()
/*x_val = random_range(-900,-200)
y_val = random_range(64,700)
dist = sprite_get_width(spr_red_rec) + 100
x2_val = x_val + dist
r1 = instance_create_depth(x_val, y_val, 1, obj_rec)
r2 = instance_create_depth(x2_val, y_val, 1, obj_rec)
r1.follow_rec = r2
r1.follow_dist = -dist
r2.follow_rec = r1
r2.follow_dist = dist
*/
sp_width = sprite_get_width(spr_red_rec)
thresh = 32

for(y_val = 64; y_val < room_height - 96; y_val += 32)
{
	x_val = random_range(-900,-200)
	gap = random_range(50,150)
	dist = gap + sp_width
	x2_val = x_val + dist
	r1 = instance_create_depth(x_val, y_val, 1, obj_rec)
	r2 = instance_create_depth(x2_val, y_val, 1, obj_rec)
	r1.follow_rec = r2
	r1.gap = gap
	r1.follow_dist = -dist
	r1.thresh = thresh
	r1.thresh_check = room_width
	r1.r1 = true
	r2.follow_rec = r1
	r2.gap = gap
	r2.follow_dist = dist
	r2.thresh = thresh
	r2.thresh_check = 0
}