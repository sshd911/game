public class Dokan extends Consts {
  public float x, y, x_sum;
  public int counter; // dokan counter
  
  public void update(Rules rules) { // called by index.draw
    initJudge();
    speedUp();
    renderUpOrDown();
    rules.judge(counter);
  }
  
  private void initJudge() { // called by this.update
    if (DOKAN_SIZE_X+x < 0) { init(); }
  }
  
  public void init() { // called by this.initJudge and rules.keyPressed
    x = width;
    y = int(random(100))%2 == 0 ? height/2 : 0;
    counter++;
  }
  
  private void speedUp() { // called by this.update
    x -= (DOKAN_SPEED+(y/4));
  }
  
  private void renderUpOrDown() { // called by this.update
    if (y == height/2) { image(DOKAN_IMG_1, x, y, DOKAN_SIZE_X, DOKAN_SIZE_Y); }
    if (y == 0) { image(DOKAN_IMG_2, x, y, DOKAN_SIZE_X, DOKAN_SIZE_Y); }
  }
}
