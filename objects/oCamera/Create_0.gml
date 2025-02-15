camera = view_camera[0];
follow = oPlayer;

viewWidth = camera_get_view_width(camera);
viewHeight = camera_get_view_height(camera);
viewWidthHalf = viewWidth * 0.5;
viewHeightHalf = viewHeight * 0.5;

xTo = xstart;
yTo = ystart;

shakeLength = 0; // How long
shakeMagnitude = 0; // How much
shakeRemain = 0; // Remaining time