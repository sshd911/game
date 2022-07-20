class Fish extends Consts {
 public float x, y, before_x, before_y;

 public void rander(Rectangle[] faces) {
   for (int i = 0; i < faces.length; i++) {
    if (faces[i].x == 0) {faces[i].x = (int) before_x; } // may only be a relief ...
    if (faces[i].y == 0) {faces[i].y = (int) before_y; } // may only be a relief ...
    if (before_x == 0) { before_x = faces[i].x; } // may only be a relief ...
    if (before_y == 0) { before_y = faces[i].y; } // may only be a relief ...
    x = faces[i].x + faces[i].width / 2.5; // fish max x 
    y = faces[i].y + faces[i].height / 2.5; // fish max y
    image(CONST.IMG, x, y, FISH_SIZE_X, FISH_SIZE_Y);
   }
 }
}
