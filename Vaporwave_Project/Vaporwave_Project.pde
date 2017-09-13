import processing.sound.*;
SoundFile song;
PImage Supreme;
PImage background;
PImage eye;
PFont Nervous;
PFont EARTHQUAKE;
int Count = 100;
int Color = 0;
float [] Xs = new float [Count];
float [] Ys = new float [Count];
float x;
 
void setup()
{
 colorMode(HSB);
  fullScreen();
  noStroke();
 Nervous = createFont("EARTHQUAKE.TTF", 32);
   textFont(Nervous);
   textAlign(CENTER);
  
  for(int i=0; i<Count; i++)
  {
    Xs[i] = random(width);
    Ys[i] = random(height);
  }
  background = loadImage("background.png");
  background.resize(width,height);
   Supreme = loadImage("Supreme.png");
  Supreme.resize(width/5,height/5);
  eye = loadImage("eye.png");
  
    song = new SoundFile(this, "driver - the eye of truth.mp3");
  song.play();
}

void draw()
{
  tint(255, 5);
   
  image(background, 0, 0, width, height);
  imageMode(CENTER);
   image(eye,width/2,height/2-280);
   tint(Color,255,255, 75);
  image(Supreme, width/2, height/2 + 100);
  imageMode(CORNER);
    fill(0,0,0);
  textSize(60);
  text("S T A Y", width/2 - 400 , height/2 + 100);
  text("W O K E", width/2 + 400 , height/2 + 100);
  text("the eye of truth", width/2 , height/2 + 320);
    for(int i=0; i<Count; i++)
  {
    fill(Color, 255, 255);
    rect(Xs[i], Ys[i], 15, 15);
    Ys[i]++;
    
    if (Ys[i]>height)
    {
      Ys[i]=0;
    }
   
       Color++;
  if(Color > 255)
  {
    Color=0;
  }  
  }

  
  
}