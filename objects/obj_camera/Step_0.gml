

//update destination
if(!global.gameOver){

xTo = follow.x;
yTo = follow.y;

}

//update object position
x += (xTo - x)/25;
y += (yTo - y)/25;

//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);