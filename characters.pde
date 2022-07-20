class Characters extends Consts {
  public Boolean flag_image;
  
  public Characters() {
    flag_image = false;
  }
  
  public void draw() {
    image(C_IMG_1, C_IMG_1_X, C_IMG_1_Y, C_IMG_1_SIZE_X, C_IMG_1_SIZE_Y); 
    image(C_IMG_2, C_IMG_2_X, C_IMG_2_Y, C_IMG_2_SIZE_X, C_IMG_2_SIZE_Y);
    image(C_IMG_3, C_IMG_3_X, C_IMG_3_Y, C_IMG_3_SIZE_X, C_IMG_3_SIZE_Y);
    image(C_IMG_4, C_IMG_4_X, C_IMG_4_Y, C_IMG_4_SIZE_X, C_IMG_4_SIZE_Y);
    callCheck();
  }

  public void callCheck() {
    if (mousePressed == true) {
      check(C_IMG_1_X, C_IMG_1_Y, C_IMG_1_SIZE_X, C_IMG_1_SIZE_Y, C_IMG_1);
      check(C_IMG_2_X, C_IMG_2_Y, C_IMG_2_SIZE_X, C_IMG_2_SIZE_Y, C_IMG_2);
      check(C_IMG_3_X, C_IMG_3_Y, C_IMG_3_SIZE_X, C_IMG_3_SIZE_Y, C_IMG_3);
      check(C_IMG_4_X, C_IMG_4_Y, C_IMG_4_SIZE_X, C_IMG_4_SIZE_Y, C_IMG_4);
    }
  }
  
  public void check(float img_x, float img_y,float img_size_x, float img_size_y, PImage img) {
     if (mouseX > img_x && mouseX < img_x+img_size_x && mouseY > img_y && mouseY < img_y+img_size_y) {   
       setImage(img); 
     }
   }
   
  public void setImage(PImage img) {
    CONST.IMG = img;  //<>//
    flag_image = true;
  }
  
  public void unsetImage() {
    CONST.IMG = null;
    flag_image = false;
  }
}
