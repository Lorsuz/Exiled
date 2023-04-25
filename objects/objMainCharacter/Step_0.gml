/// @description Insert description here
// You can write your code in this editor

spd = 2
/////////////////////////////
if keyboard_check(vk_up){
	y-=spd
	sprite_index=sprMoveBack
}
if keyboard_check(vk_down){
	y+=spd
	sprite_index=sprMoveFront
}
if keyboard_check(vk_left){
	x-=spd
	sprite_index=sprMoveSide
	image_xscale = -(image_yscale)
}
if keyboard_check(vk_right){
	x+=spd
	sprite_index=sprMoveSide
	image_xscale = image_yscale
}
///////////////////////////////
if keyboard_check_released(vk_up){
	sprite_index=sprStandBack
}
if keyboard_check_released(vk_down){
	sprite_index=sprStandFront
}
if keyboard_check_released(vk_left){
	sprite_index=sprStandSide
}
if keyboard_check_released(vk_right){
	sprite_index=sprStandSide
}
////////////////////////////////
if x < sprite_width/2{
	x = sprite_width/2
	spd = 0
}
if x > room_width - sprite_width/2{
	x = room_width - sprite_width/2
	spd = 0
}
if y < sprite_height/2{
	y = sprite_height/2
	spd = 0
}
if y > room_height - sprite_height/2{
	y = room_height - sprite_height/2
	spd = 0
}
