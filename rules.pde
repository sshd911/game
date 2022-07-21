class Rules extends Consts{
  public boolean flag_start, flag_fail, flag_clear, flag_ms; 
  public int counter = 0;
  
  public Rules() {
    flag_start = false;
    flag_fail = false;
    flag_clear = false;
  }
  
  public void draw() {
    if (flag_start == false) {
      musicPlay(4);
      drawText(BG_IMG_1, START_TEXT_SIZE, FONT, MSG_START, START_TEXT_X, START_TEXT_Y, 255, 255, 255);
      background(BG_IMG_1);
      textSize(START_TEXT_SIZE);
      textFont(FONT);
      text(MSG_START, START_TEXT_X, START_TEXT_Y);
      fill(255,255,255);
    }
  }
  
  public void keyPressed() {
    // start
    if (characters.flag_image == true && flag_start == false){
      musicPause();
      musicPlay(1);
      flag_start = true;
    }
    // restart 
    if (flag_start == true && (flag_fail == true || flag_clear == true)) {
      musicPause();
      musicPlay(4);
      characters.flag_image = false;
      flag_start = false;
      flag_fail = false;
      flag_clear = false;
      dokan.counter = 0;
      dokan.init();
      fish.init();
      draw();
    }
  }
   
  public void judge(int counter) { 
    if (
      (fish.x != 0 && fish .y != 0) && 
      (fish.x-FISH_SIZE_X >= dokan.x-DOKAN_SIZE_X) && 
      (fish.x+FISH_SIZE_X <= dokan.x+DOKAN_SIZE_X) && 
      ((dokan.y == height/2 && fish.y-FISH_SIZE_Y >= DOKAN_SIZE_Y/2) ||
      (dokan.y == 0 && fish.y-FISH_SIZE_Y <= DOKAN_SIZE_Y/2))
    ) { flag_fail = true; }  
    if (counter == MAX) { flag_clear = true; }
    gameOver();
    gameClear();
  }
 
  public void gameOver() {
    if (flag_fail == true) {
      musicPause();
      musicPlay(2);
      drawText(BG_IMG_2, FAIL_TEXT_SIZE, FONT, MSG_FAIL, FAIL_TEXT_X, FAIL_TEXT_Y, 255, 0, 0);
    }
  }
  
  public void gameClear() {
    if (flag_clear == true) { 
      musicPause();
      musicPlay(3);
      drawText(BG_IMG_3, START_TEXT_SIZE, FONT, MSG_CLEAR, CLEAR_TEXT_X, CLEAR_TEXT_Y, 255, 255, 0);
    }
  }
  
  public void score() {
    textSize(SCORE_TEXT_SIZE);
    text(dokan.counter+MSG_SCORE, SCORE_TEXT_X, SCORE_TEXT_Y); 
    fill(0,0,0);
  }
  
  public void drawText(PImage bg_img, int t_size, PFont font, String msg, int msg_x, int msg_y, int r, int g, int b ) {
    background(bg_img);
    textSize(t_size);
    textFont(font);
    text(msg, msg_x, msg_y); 
    fill(r,g,b);
  }
  
  public void musicPause() {
    bgm_1.pause();
    bgm_2.pause();
    bgm_3.pause();
    bgm_4.pause();
  }
  
  public void musicPlay(int number) {
    if (number == 1) { bgm_1.play();}
    if (number == 2) { bgm_2.play();}    
    if (number == 3) { bgm_3.play();}
    if (number == 4) { bgm_4.loop();}
  }
}
