class Rules extends Consts{
  public boolean flag_start, flag_fail, flag_clear; 
  public int counter;
  
  public Rules() {
    flag_start = false;
    flag_fail = false;
    flag_clear = false;
    counter = 0;
  }
  
  public void draw() {
    if (flag_start == false) {
      bgm_4.loop();
      background(BG_IMG_1);
      textFont(FONT);
      fill(255, 255, 255);
      textSize(START_TEXT_SIZE);
      text(MSG_START,  START_TEXT_X, START_TEXT_Y);
    }
  }
  
  public void keyPressed() {
    // star
    if (characters.flag_image == true && flag_start == false){ // start
      flag_start = true;
      bgm_4.pause();
      bgm_1.play();
    }
    // restart 
    if (flag_start == true && (flag_fail == true || flag_clear == true)) {
      bgm_1.pause();
      bgm_2.pause();
      bgm_3.pause();
      bgm_4.play();
      flag_start = false;
      flag_fail = false;
      flag_clear = false;
      dokan.counter = 0;
      dokan.init();
      draw();
    }
  }
   
  public void judge(int counter) { 
    if (
    fish.x-FISH_SIZE_X >= dokan.x-DOKAN_SIZE_X && 
    fish.x+FISH_SIZE_X <= dokan.x+DOKAN_SIZE_X && (
    dokan.y == height/2 && fish.y-FISH_SIZE_Y >= DOKAN_SIZE_Y/2 ||
    dokan.y == 0 && fish.y-FISH_SIZE_Y <= DOKAN_SIZE_Y/2
    )) { flag_fail = true; }
    
    if (counter == MAX) { flag_clear = true; }
    gameOver();
    gameClear();
  }
 
  public void gameOver() {
    if (flag_fail == true) {
      bgm_1.pause();
      bgm_2.play();
      textSize(FAIL_TEXT_SIZE);
      background(BG_IMG_2);
      text(MSG_FAIL,  FAIL_TEXT_X, FAIL_TEXT_Y);
      textFont(FONT);
      fill(255, 0, 0);
    }
  }
  
  public void gameClear() {
    if (flag_clear == true) { 
      bgm_1.pause();
      bgm_3.play();
      textSize(START_TEXT_SIZE);
      background(BG_IMG_3);
      text(MSG_CLEAR, CLEAR_TEXT_X, CLEAR_TEXT_Y); 
      textFont(FONT);
      fill(255,255,0);
    }
  }
  
  public void score() {
    textSize(SCORE_TEXT_SIZE);
    text(dokan.counter+MSG_SCORE, SCORE_TEXT_X, SCORE_TEXT_Y); 
    fill(0,0,0);
  }
}
