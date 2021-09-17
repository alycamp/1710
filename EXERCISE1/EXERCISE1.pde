PImage img; //luma
PImage bg; //galaxy


void setup() {
  size(800, 600, P2D); // P2D enables 2D GPU acceleration
  img = loadImage("luma.png");
  bg = loadImage("galaxy.jpg");
  
}

void draw() { 
  background(bg);
  
  if (mousePressed); {
    imageMode(CENTER);
    image(img, mouseX, mouseY);
    noCursor();
  }
}
  

  
