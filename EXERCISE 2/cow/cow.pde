PImage bg, fence, barn, ufo, cow;
int x, y;
int x2, y2;
int xSpeed;
int xSpeed2;
int ySpeed;

void setup() {
  size(500, 500);
  bg = loadImage("farmbg.png");
  fence = loadImage("fence.png");
  barn = loadImage("barn.png");
  ufo = loadImage("UFO.png");
  cow = loadImage("cow.png");
  noCursor() ;

  
  x = 300;
  y = 200;
  x2 = 300;
  y2 = 300;
  xSpeed = 1;
}

void draw() {
  background(bg);
  imageMode(CORNER);
  image(barn, 0, 0);
  image(cow, x, y);
  image(fence, 0, 0);
  image(ufo, mouseX, mouseY);
  
  x = x + xSpeed;

  if (x >= 450) xSpeed = -xSpeed;
  if (x <= 0) xSpeed = -xSpeed;
}


  
