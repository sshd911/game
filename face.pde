public class Face extends Consts {
 public float x, y, before_x, before_y;

 private void rander(Rectangle[] faces) { // called by index.draw
   for (int i = 0; i < faces.length; i++) {
    x = faces[i].x + faces[i].width / 2.5; // fish x 
    y = faces[i].y + faces[i].height / 2.5; // fish y
    image(CONST.IMG, x, y, IMG_SIZE_X, IMG_SIZE_Y);
   }
 }
 
 public void init() { // called by rules.keyPressed
   x = 0;
   y = 0;
 }
}
