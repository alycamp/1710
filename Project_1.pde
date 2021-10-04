float x = 0;
float ySpeed = 1;
PImage bg, img; //UFO

void setup() {
  size(400, 400);
  img = loadImage("UFO.png");
  bg = loadImage("SPACE.jpeg");
  x = width;
}

void draw() {
  background(bg);
  imageMode(CORNER);
  image(img, x, 200);
  
  if(x>0) {
    x = x - 5;
    
   x = x + ySpeed;
   
   if(x > height) {
     ySpeed = ySpeed * -1;
  }
 }
}
