PImage img;

int startX = 305;
int startY = 142;
int endX = 300;
int endY = 139;

int thorX = 50;
int thorY = 100;

int r = 125;
int g = 125;
int b = 255;


void setup(){
  size(500, 500);
  drawBackground();
  img = loadImage("thor.png");
  drawThor(thorX, thorY);
}


void draw(){
  {
    image(img, 0,0);
    int randomStroke = 5;
    stroke((int)(Math.random()*10+130), (int)(Math.random()*10+201), (int)(Math.random()*10+230));
    strokeWeight(randomStroke);
    while (endX > 50){
      endY = endY + ((int)(Math.random() * 40 -30));
      endX = endX + ((int)(Math.random() * 10 -25));
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
  }
}


void drawBackground(){
  for (int c = 0; c <= 500; c++){
    strokeWeight(5);
    stroke(200, 200, c, 30);
    line(0, c, 500, c);
  } 
}

void drawThor(int x, int y) {
  image(img, x, y, 400,400);
}

void mousePressed(){
  startX = 305;
  startY = 142;
  endX = 300;
  endY = 139;
}
