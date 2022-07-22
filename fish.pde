class Fish extends Consts {
 public float x, y, before_x, before_y;

 public void rander(Rectangle[] faces) {
   for (int i = 0; i < faces.length; i++) {
    x = faces[i].x + faces[i].width / 2.5; // fish x 
    y = faces[i].y + faces[i].height / 2.5; // fish y
    image(CONST.IMG, x, y, IMG_SIZE_X, IMG_SIZE_Y);
   }
 }
 
 public void init() {
   x = 0;
   y = 0;
 }
}
