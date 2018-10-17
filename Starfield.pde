Particle[] particles;
void setup()
{
  size(600, 500);
  particles = new Particle[1000];
  for(int nI = 0; nI < particles.length; nI++)
  {
    particles[nI] = new NormalParticle();
    
  }
    particles[0] = new Oddball();
    particles[1] = new Jumbo();
}

void draw()
{
  background(0);
  for(int nI = 0; nI < particles.length; nI++)
  {
     particles[nI].show();
     particles[nI].move();
  }
}

class NormalParticle implements Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  NormalParticle()
  {
    myX = myY = 300;
    myColor = color(219, 255, 188);
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
  }
  public void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, 4, 4);
  }
}

interface Particle
{
  public void show();
  public void move();
}

class Oddball implements Particle{
  double myX, myY, myAngle, mySpeed;
  Oddball(){
    myX = myY = 200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*20;
  }
  public void show(){
    fill(206, 219, 31);
    ellipse((float)myX, (float)myY, 20, 20);
  }
  public void move(){
    myX = myX + 1;
    myY = myY + 1;
  }
}

class Jumbo extends NormalParticle{
  public void show()
  {
    fill(255, 188, 188);
    ellipse((float)myX, (float)myY, 30, 30);
  }
}







