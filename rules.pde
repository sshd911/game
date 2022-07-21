public class Rules extends Consts{
  public boolean flag_start, flag_fail, flag_clear, flag_ms, flag_delay; 
  public int counter = 0;
  
  public Rules() {
    flag_start = false;
    flag_fail = false;
    flag_clear = false;
    flag_delay = false;
  }
  
  private void draw() { // called index.draw and this.keyPressed
    if (flag_start == false) { // select character
      musicPlay(1);
      drawText(BG_IMG_1, START_TEXT_SIZE, FONT, MSG_START, START_TEXT_X, START_TEXT_Y, 255, 255, 255);
    }
  }
  
  private void keyPressed() { // called by index.keyPressed
    // start
    if (characters.flag_image == true && flag_start == false){
      musicPause(1);
      musicPlay(4);
      flag_start = true;
    }
    // restart 
    if (flag_start == true && (flag_fail == true || flag_clear == true)) {
      musicPause(2);
      musicPause(3);
      musicPlay(1);
      flagReset();
      dokan.counter = 0;
      dokan.init();
      face.init();
      draw();
    }
  }
   
  public void judge(int counter) { // called by dokan.update
    if (
      (face.x != 0 && face .y != 0) && 
      (face.x-IMG_SIZE_X >= dokan.x-DOKAN_SIZE_X) && 
      (face.x+IMG_SIZE_X <= dokan.x+DOKAN_SIZE_X) && 
      ((dokan.y == height/2 && face.y-IMG_SIZE_Y >= DOKAN_SIZE_Y/2) ||
      (dokan.y == 0 && face.y-IMG_SIZE_Y <= DOKAN_SIZE_Y/2))
    ) { 
    flag_fail = true;
    musicPause(4);
    soundPlay(1);
    }  
    if (counter == MAX) { flag_clear = true; }
    gameOver();
    gameClear();
  }
 
  private void gameOver() { // called by index.draw and this.judge
    if (flag_delay == false && flag_fail == true) {
      drawText(BG_IMG_2, FAIL_TEXT_SIZE, FONT, MSG_FAIL, FAIL_TEXT_X, FAIL_TEXT_Y, 255, 0, 0);
      soundPause(1);
      delay(3000);
      musicPlay(2);
      flag_delay = true;
    }
  }
  
  private void gameClear() { // called by index.draw and this.judge
    if (flag_clear == true) { 
      musicPause(4);
      musicPlay(3);
      drawText(BG_IMG_3, START_TEXT_SIZE, FONT, MSG_CLEAR, CLEAR_TEXT_X, CLEAR_TEXT_Y, 255, 255, 0);
    }
  }
  
  private void score() { // called by index.draw
    textSize(SCORE_TEXT_SIZE);
    text(dokan.counter+MSG_SCORE, SCORE_TEXT_X, SCORE_TEXT_Y); 
    fill(0,0,0);
  }
  
  // called by this.class
  private void drawText(PImage bg_img, int t_size, PFont font, String msg, int msg_x, int msg_y, int r, int g, int b ) {
    background(bg_img);
    textSize(t_size);
    textFont(font);
    fill(r,g,b);
    text(msg, msg_x, msg_y); 
  }
  
  // called by this.class
  private void musicPause(int number) {
    if (number == 1) {bgm_1.pause();}
    if (number == 2) {bgm_2.pause();}
    if (number == 3) {bgm_3.pause();}
    if (number == 4) {bgm_4.pause();}
  }
  
  // called by this.class
  private void musicPlay(int number) {
    if (number == 1) { 
      bgm_1.play(); 
      bgm_1.rewind();
    }
    if (number == 2 && flag_fail == true) {
      bgm_2.play(); 
      bgm_2.rewind();
    }    
    if (number == 3 && flag_clear == true) {
      bgm_3.play(); 
      bgm_3.rewind();
    }
    if (number == 4) { 
      bgm_4.play(); 
      bgm_4.rewind();
    }
  }
  // called by this.class
  private void soundPause(int number) {
    if (number == 1) { 
      sound_1.play(); 
      sound_1.rewind();
    }
    if (number == 2) {
      sound_2.play(); 
      sound_2.rewind();
    }    
    if (number == 3) {
      sound_3.play(); 
      sound_3.rewind();
    }
    if (number == 4) { 
      sound_4.play(); 
      sound_4.rewind();
    }
  }
  
  // called by this.class
  private void soundPlay(int number) {
    if (number == 1) { 
      sound_1.play(); 
      sound_1.rewind();
    }
    if (number == 2 ) {
      sound_2.play(); 
      sound_2.rewind();
    }    
    if (number == 3) {
      sound_3.play(); 
      sound_3.rewind();
    }
    if (number == 4) { 
      sound_4.play(); 
      //sound_4.rewind();
    }
  }
  
  // called by this.class
  private void flagReset() {
    characters.flag_image = false;
    flag_start = false;
    flag_fail = false;
    flag_clear = false;
    flag_delay = false;
  }
}
