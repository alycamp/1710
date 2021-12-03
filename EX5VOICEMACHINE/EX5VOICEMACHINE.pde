PImage jungleImg, mountainImg, oceanImg, currentImg;
String message = "";
PFont font;
int fontSize = 20;
color fontColor = color(255);
color fontShadowColor = color(0);
PVector textPos, shadowPos;

void setup() {
  size(640,480, P2D);
  setupSttReceiver();

  font = createFont("Arial", fontSize);
  textFont(font);
  textAlign(CENTER);
  textPos = new PVector(width/2, height - (fontSize * 2));
  shadowPos = new PVector(textPos.x + 2, textPos.y + 2);
  
  jungleImg = loadImage("jungle.png");
  mountainImg = loadImage("mountain.jpg");
  oceanImg = loadImage("ocean.png");
  currentImg = jungleImg;
}

void draw() {
  if (result.contains("jungle")) {
    message = "jungle";
    result = "";
    currentImg = jungleImg;
  } else if (result.contains("mountain")) {
    message = "mountain";
    result = "";
    currentImg = mountainImg;
  } else if (result.contains("ocean")) {
    message = "ocean";
    result = "";
    currentImg = oceanImg;
  }
  
  image(currentImg, 0, 0, width, height);    
  
  fill(fontShadowColor);
  text(message, shadowPos.x, shadowPos.y);
  fill(fontColor);
  text(message, textPos.x, textPos.y);
}
