import processing.sound.*;
SinOsc audio;
boolean m=false;
boolean s=false;

void setup() {
  size(700, 400);
  background(0);
    
  audio = new SinOsc(this);
}

void draw() {
  background(0);
  audio.freq(map(mouseY, 0, height, 200, 1000));
 if(m==true){
   audio.pan(map(mouseX, 0, width, -1.0, 1.0));
 }else{
  audio.amp(map(mouseX, 0, width, 0.0, 1.0));
 }
 if(s==true){
  audio.stop();
 }else{
  audio.play();
 }   
 if (keyPressed) {
    if (key == ' ') {
      if(s==true){
        s=false;
      }else{
        s=true;
      }
    }
  }
}

void mouseClicked() {
  if (m == true) {
    m = false;
  } else {
    m = true;
  }
}
