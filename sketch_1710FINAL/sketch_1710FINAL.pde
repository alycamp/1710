import processing.sound.*;
PImage saxophone, clarinet, drums, piano, currentImg;
String message = "";
PFont font;
int fontSize = 20;
color fontColor = color(255);
color fontShadowColor = color(0);
PVector textPos, shadowPos;
SoundFile sax,clar,drum,pia;

void setup() {
  size(640,480, P2D);
  setupSttReceiver();

  font = createFont("Arial", fontSize);
  textFont(font);
  textAlign(CENTER);
  textPos = new PVector(width/2, height - (fontSize * 2));
  shadowPos = new PVector(textPos.x + 2, textPos.y + 2);
  
  saxophone = loadImage("saxophone.jpg");
  clarinet = loadImage("clarinet.jpg");
  drums = loadImage("drums.jpg");
  piano = loadImage("piano.jpeg");
  currentImg = saxophone;
  
  sax = new SoundFile(this,"saxophone.wav");
  clar = new SoundFile(this,"clarinet.wav");
  drum = new SoundFile(this,"drum.wav");
  pia = new SoundFile(this,"piano.wav");
  
}

void draw() {
  if (result.contains("saxophone")) {
    message = "saxophone";
    result = "";
    sax.play();
    sax.amp(1);
    currentImg = saxophone;
  } else if (result.contains("clarinet")) {
    message = "clarinet";
    result = "";
    clar.play();
    clar.amp(1);
    currentImg = clarinet;
  } else if (result.contains("drums")) {
    message = "drums";
    result = "";
    drum.play();
    drum.amp(1);
    currentImg = drums;
  } else if (result.contains("piano")) {
    message = "piano";
    result = "";
    pia.play();
    pia.amp(1);
    currentImg = piano;
  }
  
  image(currentImg, 0, 0, width, height);    
  
  fill(fontShadowColor);
  text(message, shadowPos.x, shadowPos.y);
  fill(fontColor);
  text(message, textPos.x, textPos.y);
}
