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
  bgm_1 = minim.loadFile("bgm_1.mp3"); // called when you after start 
  bgm_2 = minim.loadFile("bgm_2.mp3"); // called when you fail
  bgm_3 = minim.loadFile("bgm_3.mp3"); // called when you clear
  bgm_4 = minim.loadFile("bgm_4.mp3"); // called when you before start
  rules.draw(); // settings before start 
}

void draw() {
  characters.draw(); // settings character
  //characters.mouseClicked();
  // done when you after start 
  if (rules.flag_start == true) {
    // done when you not fail or clear
    if (rules.flag_clear == false && rules.flag_fail == false) {
      video.render(opencv, capture); // render video 
      fish.rander(video.faces); // render fish on your face
      dokan.update(rules); // updating dokan and call 'Rules' class method.
      rules.score(); //<>//
    }
    // called when you game clear
    if (rules.flag_clear == true) { rules.gameClear(); }
     // called when you game over
    if (rules.flag_fail == true) { rules.gameOver(); }
  }
}

// Built-in function
void captureEvent(Capture capture) {
  capture.read();
}

void keyPressed() {
  rules.keyPressed(); // change start flag 'false' to 'true' and more about ...
}

void stop() { 
  bgm_1.close();
  bgm_2.close();  
  bgm_3.close();  
  bgm_4.close();
  minim.stop();
  super.stop();
}
