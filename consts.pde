protected class Consts {
// character settings
   protected final PImage C_IMG_1 = loadImage("character_1.png");
   protected final PImage C_IMG_2 = loadImage("character_2.png");
   protected final PImage C_IMG_3 = loadImage("character_3.png");
   protected final PImage C_IMG_4 = loadImage("character_4.png");
   protected final float C_IMG_1_SIZE_X = 100;
   protected final float C_IMG_1_SIZE_Y = 100;
   protected final float C_IMG_2_SIZE_X = 100;
   protected final float C_IMG_2_SIZE_Y = 100;  
   protected final float C_IMG_3_SIZE_X = 100;
   protected final float C_IMG_3_SIZE_Y = 100;  
   protected final float C_IMG_4_SIZE_X = 150;
   protected final float C_IMG_4_SIZE_Y = 150;
   protected final float C_IMG_1_X = 100;
   protected final float C_IMG_1_Y = height-this.C_IMG_1_SIZE_Y*1.75;
   protected final float C_IMG_2_X = 250;  
   protected final float C_IMG_2_Y = height-this.C_IMG_2_SIZE_Y*1.65;
   protected final float C_IMG_3_X = 400;
   protected final float C_IMG_3_Y = height-this.C_IMG_3_SIZE_Y*1.75;
   protected final float C_IMG_4_X = 550;
   protected final float C_IMG_4_Y = height-this.C_IMG_4_SIZE_Y*1.35;
// constants variable of Rules Class 
   protected final PFont FONT = loadFont("Trattatello-48.vlw"); // text font
   protected final PImage BG_IMG_1 = loadImage("bg_1.jpg"); // start background image
   protected final PImage BG_IMG_2 = loadImage("bg_2.jpeg"); // fail background image
   protected final PImage BG_IMG_3 = loadImage("bg_3.jpg"); // clear background image
   protected final String MSG_START = "Select the charactor, click to start!!"; // start text
   protected final String MSG_FAIL = "You Lose, Key down to continue"; // fail text
   protected final String MSG_CLEAR = "Congratulation"; // clear text
   protected final String MSG_SCORE = "/"+this.MAX; // score text
   protected final int START_TEXT_X = width/5; // start position size x
   protected final int START_TEXT_Y = height/2; // start position size y
   protected final int FAIL_TEXT_X = width/7;  // fail position size x
   protected final int FAIL_TEXT_Y = height/2; // fail position size y  
   protected final int CLEAR_TEXT_X = width/3; // clear position size x
   protected final int CLEAR_TEXT_Y = height/2; // clear position size y
   protected final int SCORE_TEXT_X = width-this.SCORE_TEXT_SIZE*2; // clear position size x
   protected final int SCORE_TEXT_Y = height/10; // clear position size y
   protected final int START_TEXT_SIZE = 64; // start text size
   protected final int FAIL_TEXT_SIZE = 64; // fail text size
   protected final int CLEAR_TEXT_SIZE = 64; // clear text size
   protected final int SCORE_TEXT_SIZE = 64; // score text size
// constants variable of Fish Class 
   protected PImage IMG; // charactor image
   protected final float IMG_SIZE_X = 100; // img size x
   protected final float IMG_SIZE_Y = 100; // img size y
// constants variable of Dokan class
   protected final PImage DOKAN_IMG_1 = loadImage("dokan_1.png"); // dokan image 
   protected final PImage DOKAN_IMG_2 = loadImage("dokan_2.png"); // dokna image flip upside down
   protected final int DOKAN_SPEED = 20; // dokan speed 
   protected final int MAX = 3; // dokan counter == clear line 
   protected final float DOKAN_SIZE_X = width/6; // dokan size x
   protected final float DOKAN_SIZE_Y = height/2; // dokan size y
  
   Consts() { // resize some images
    BG_IMG_1.resize(760, 570);
    BG_IMG_2.resize(760, 570);
    BG_IMG_3.resize(760, 570);
  }
}
