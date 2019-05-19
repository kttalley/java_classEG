Sun sun1 = new Sun(mouseX, mouseY, 2);

class Sun {
 float sunNoise, sunNoiseRate, xpos, ypos, sunSize;
 Sun (float x, float y, float sze) {
  xpos = x;
  ypos = y;
  sunSize = sze;
 }
 void update() {
  translate(xpos, ypos);
  scale(sunSize);
  fill(255,255,0);
  ellipse(0,0,100,100);
  resetMatrix();
 }
}

HLine h1 = new HLine(20, 2.0);
class HLine { 
  float ypos, speed; 
  HLine (float y, float s) {  
    ypos = y; 
    speed = s; 
  } 
  void update() { 
    ypos += speed; 
    if (ypos > height) { 
      ypos = 0; 
    } 
    line(0, ypos, width, ypos); 
  } 
} 


void setup() {
 size(500,500);
 frameRate(30);
}

void draw() {
  Sun sun1 = new Sun(mouseX, mouseY, 2);
  background(255);
  h1.update();
  sun1.update();
}
