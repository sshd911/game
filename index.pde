import gab.opencv.OpenCV;
import processing.video.Capture;
import java.awt.Rectangle;
import ddf.minim.AudioPlayer;
import ddf.minim.Minim;

Capture capture;
OpenCV opencv;
Video video;
Face face;
Dokan dokan;
Rules rules;
Consts CONST;
Characters characters;
Minim minim;
AudioPlayer bgm_1, bgm_2, bgm_3, bgm_4;
AudioPlayer effect_1, effect_2, effect_3, effect_4;
AudioPlayer sound_1, sound_2, sound_3, sound_4;

void settings() {
  size(760, 570);
}

void setup() {
  capture = new Capture(this, 760, 570);
  opencv = new OpenCV(this, 760, 570);
  video = new Video();
  face = new Face();
  dokan = new Dokan();
  rules = new Rules();
  characters = new Characters();
  CONST = new Consts(); 
  minim = new Minim(this);  
  bgm_1 = minim.loadFile("bgm_1.mp3"); // used when you before start  
  bgm_2 = minim.loadFile("bgm_2.mp3"); // used when you fail  
  bgm_3 = minim.loadFile("bgm_3.mp3"); // used when you clear
  bgm_4 = minim.loadFile("bgm_4.mp3"); // used when you after start
  effect_1 = minim.loadFile("character_1.mp3");
  effect_2 = minim.loadFile("character_2.mp3");
  effect_3 = minim.loadFile("character_3.mp3");
  effect_4 = minim.loadFile("character_4.mp3");
  sound_1 = minim.loadFile("sound_1.mp3");
  sound_2 = minim.loadFile("sound_2.mp3");
  sound_3 = minim.loadFile("sound_3.mp3");
  sound_4 = minim.loadFile("sound_4.mp3");
  rules.draw(); // settings before start 
}

void draw() {
  if (rules.flag_start == false) characters.draw(); // select character
  if (rules.flag_start == true && rules.flag_clear == false && rules.flag_fail == false) {
    video.render(opencv, capture); // render video 
    face.rander(video.faces); // render fish on your face
    dokan.update(rules); // updating dokan and call 'Rules' class method ... //<>// //<>//
    rules.score();
  } else if (rules.flag_start == true && rules.flag_clear == true) { 
    rules.gameClear(); // done when you game clear
  } else if (rules.flag_start == true && rules.flag_fail == true) {
    rules.gameOver(); // done when you game over
  }
}

void captureEvent(Capture capture) {
  capture.read(); 
}

void keyPressed() {
  rules.keyPressed(); // change rules.flag_start 'false' to 'true' and more about ...
}
