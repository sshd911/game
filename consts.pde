class Consts {
// character settings
   public final PImage C_IMG_1 = loadImage("fish.png");
   public final PImage C_IMG_2 = loadImage("kuppa.png");
   public final PImage C_IMG_3 = loadImage("mario.png");
   public final PImage C_IMG_4 = loadImage("kirrer.png");
   public float C_IMG_1_SIZE_X = 100;
   public float C_IMG_1_SIZE_Y = 100;
   public float C_IMG_2_SIZE_X = 100;
   public float C_IMG_2_SIZE_Y = 100;  
   public float C_IMG_3_SIZE_X = 100;
   public float C_IMG_3_SIZE_Y = 100;  
   public float C_IMG_4_SIZE_X = 100;
   public float C_IMG_4_SIZE_Y = 100;
   public final float C_IMG_1_X = 100;
   public final float C_IMG_1_Y = height-this.C_IMG_1_SIZE_Y*1.5;
   public final float C_IMG_2_X = 250;  
   public final float C_IMG_2_Y = height-this.C_IMG_2_SIZE_Y*1.7;
   public final float C_IMG_3_X = 400;
   public final float C_IMG_3_Y = height-this.C_IMG_3_SIZE_Y*1.7;
   public final float C_IMG_4_X = 550;
   public final float C_IMG_4_Y = height-this.C_IMG_4_SIZE_Y*1.5;
// constants variable of Rules Class 
   public final PFont FONT = loadFont("Trattatello-48.vlw"); // text font
   public final PImage BG_IMG_1 = loadImage("bg_1.jpg"); // start background image
   public final PImage BG_IMG_2 = loadImage("bg_2.jpeg"); // fail background image
   public final PImage BG_IMG_3 = loadImage("bg_3.jpg"); // clear background image
   public final String MSG_START = "Select the charactor, click to start!!"; // start text
   public final String MSG_FAIL = "Game Over"; // fail text
   public final String MSG_CLEAR = "Congratulation"; // clear text
   public final String MSG_SCORE = "/"+this.MAX; // score text
   public final int START_TEXT_X = 0; // start position size x
   public final int START_TEXT_Y = height/2; // start position size y
   public final int FAIL_TEXT_X = width/3;  // fail position size x
   public final int FAIL_TEXT_Y = height/2; // fail position size y  
   public final int CLEAR_TEXT_X = width/3; // clear position size x
   public final int CLEAR_TEXT_Y = height/2; // clear position size y
   public final int SCORE_TEXT_X = width-this.SCORE_TEXT_SIZE*2; // clear position size x
   public final int SCORE_TEXT_Y = height/10; // clear position size y
   public final int START_TEXT_SIZE = 64; // start text size
   public final int FAIL_TEXT_SIZE = 64; // fail text size
   public final int CLEAR_TEXT_SIZE = 64; // clear text size
   public final int SCORE_TEXT_SIZE = 64; // score text size
// constants variable of Fish Class 
   public PImage IMG; // charactor image
   public final float IMG_SIZE_X = 100; // img size x
   public final float IMG_SIZE_Y = 100; // img size y
// constants variable of Dokan class
   public final PImage IMG_2 = loadImage("dokan_1.png"); // dokan image 
   public final PImage IMG_3 = loadImage("dokan_2.png"); // dokna image flip upside down
   public final int DOKAN_SPEED = 20; // dokan speed 
   public final int MAX = 20; // dokan counter == clear line 
   public final float DOKAN_SIZE_X = width/6; // dokan size x
   public final float DOKAN_SIZE_Y = height/2; // dokan size y
  
   Consts() { // resize some images
    BG_IMG_1.resize(760, 570);
    BG_IMG_2.resize(760, 570);
    BG_IMG_3.resize(760, 570);
  }
}
