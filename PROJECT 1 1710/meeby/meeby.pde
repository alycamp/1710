PImage bg, meeby, meeby2;
int xPos;
int x, y;
int x2, y2;
int x2Speed, y2Speed;
int xSpeed, ySpeed;
boolean button = false;

void setup () {
  size(700, 700, P2D);
  bg = loadImage("lab.png");
  meeby = loadImage("meeby2.png");
  meeby2 = loadImage("meeby3.png");
  x = 400;
  y = 400;
  x2 = 401;
  y2 = 401;
  xSpeed = 4;
  ySpeed = 2;
  x2Speed = 6;
  y2Speed = 3;
  
}

void draw() {
  imageMode(CENTER);
  background(bg);
  imageMode(CORNER);
  image(meeby, x, y);
  image(meeby2, x2, y2);

if (button) {
  image(meeby, x, y);

  x = x + xSpeed;
  y = y + ySpeed;
  x2 = x2 + x2Speed;
  y2 = y2 + y2Speed;

  if (x >= 530) xSpeed = -xSpeed;
  if (x <= 52) xSpeed = -xSpeed;
  if (x2 >= 530) x2Speed = -x2Speed;
  if (x2 <= 52) x2Speed = -x2Speed;

  if (y >= 430) ySpeed = -ySpeed;
  if (y <= 61) ySpeed = -ySpeed;
  if (y2 >= 430) y2Speed = -y2Speed;
  if (y2 <= 61) y2Speed = -y2Speed;
}
}

void mousePressed() {
  if (mousePressed);
    button = !button;
}
