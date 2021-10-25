Player b; 
PImage pl; 

int score=0;
int highScore=0; 
boolean safe=true; 
boolean start=false;

PVector gravity = new PVector(0, 0.1); 
ArrayList<Barrier> barriers = new ArrayList<Barrier>();
int wid = 1100; 

void setup()
{
  size(1000,400); 
  b = new Player();
  pl = loadImage("bebe.png"); 
  
}

void draw()
{
  
  if(start) 
    {
      if(random(1)<0.5&&frameCount % 60 == 0)
        {
          barriers.add(new Barrier()); 
        }
    }
    
    
   if(keyPressed)
    {
      start = true; 
      if(b.pos.y == height-170) 
        {
          PVector up = new PVector(0,-100); 
          b.applyForce(up); 
        }
      
    }
  
   background(112,147,219); 
   b.update(); 
   b.show(); 

    for(int i=barriers.size()-1; i>=0; i--)
    {
        Barrier p = barriers.get(i);
        p.update();
        
        if (p.hits(b))
          {
            p.show(true);
            safe=false;
          }
        else
          {
            p.show(false);
            safe=true;
          }
        
       
        if(p.x < -p.w)
          {
            barriers.remove(i);
          }
    }
  
  if(safe&&start) 
    {
      score++;
    }
  else
    {
     
      score=0;
      text("CLICK THEN PRESS TO START",300, 200);
      start=false; 
    }
    
    fill(16,53,201);
    textSize(32);
    
 
    text("Score",width/2-100,50);
    text(score,width/2,50);
    
   
    if(highScore < score)
    {
      highScore = score;
    }
    
    text(highScore,width/2+310,50);
    text("High Score",width/2+300-170,50);
  
}
