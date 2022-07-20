class Dokan extends Consts{
  public float x, y, x_sum;
  public int counter; // dokan counter
  
  public void update(Rules rules) {
    if (DOKAN_SIZE_X+x < 0) { init(); }
    x -= (DOKAN_SPEED+(y/4));
    if (y == height/2) { image(IMG_2, x, y, DOKAN_SIZE_X, DOKAN_SIZE_Y); }
    if (y != height/2) { image(IMG_3, x, y, DOKAN_SIZE_X, DOKAN_SIZE_Y); }
    rules.judge(counter);
  }
  
  public void init() { // called when you restart or render new dokan image 
    x = width;
    y = int(random(100))%2 == 0 ? height/2 : 0;
    counter++;
  }
}
