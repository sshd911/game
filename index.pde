import gab.opencv.*;
import processing.video.*;
import java.awt.*;
import processing.sound.*;
import ddf.minim.*;

Capture capture;
OpenCV opencv;
Video video;
Fish fish;
Dokan dokan;
Rules rules;
Consts CONST;
Characters characters;
Minim minim;
AudioPlayer bgm_1, bgm_2, bgm_3, bgm_4;

void settings() {
  size(760, 570);
}

void setup() {
  capture = new Capture(this, 760, 570);
  opencv = new OpenCV(this, 760, 570);
  video = new Video();
  fish = new Fish();
  dokan = new Dokan();
  rules = new Rules();
  characters = new Characters();
  CONST = new Consts(); 
  minim = new Minim(this);  
  bgm_1 = minim.loadFile("bgm_1.mp3"); // used when you after start  
  bgm_2 = minim.loadFile("bgm_2.mp3"); // used when you fai  
  bgm_3 = minim.loadFile("bgm_3.mp3"); // used when you clea  
  bgm_4 = minim.loadFile("bgm_4.mp3"); // used when you before start
  rules.draw(); // settings before start 
}

void draw() {
  characters.draw(); // select character
  if (rules.flag_start == true && rules.flag_clear == false && rules.flag_fail == false) {
    video.render(opencv, capture); // render video 
    fish.rander(video.faces); // render fish on your face
    dokan.update(rules); // updating dokan and call 'Rules' class method ...
    rules.score();
  } else if (rules.flag_start == true && rules.flag_clear == true) { 
    rules.gameClear(); // done when you game clear
  } else if (rules.flag_start == true && rules.flag_fail == true) {
    rules.gameOver(); // done when you game over
  }
}

void captureEvent(Capture capture) {
  capture.read(); //<>//
}

void keyPressed() {
  rules.keyPressed(); // change rules.flag_start 'false' to 'true' and more about ...
}
