PImage img, img2, currentImg;

void setup() {
  size(640, 480, P2D);  
  img = loadImage("pixels.jpg");
  img2 = loadImage("pixels2.jpg");
  img.loadPixels();
  currentImg = img;
}

void draw() {  
  for (int i=0; i<1000; i++) {
    int index1 = int(random(0, img.pixels.length));
    int index2 = int(random(0, img.pixels.length));
    img.pixels[index1] = img.pixels[index2];
  }

  img.updatePixels();
    
  image(img, 0, 0);
}
