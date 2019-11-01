//your code here
Particle[] parts = new Particle[5000];
boolean start = false; 
void setup()
{
  //your code here
  size(400, 400);
  for (int i = 0; i < parts.length; i++)
  {
    parts[i] = new Particle();
  }
  parts[0] = new OddballParticle();
}
void draw()
{
  //your code here
  background(0);
  for(int x = 0; x < parts.length; x++)
  {
    parts[x].move();
    parts[x].show();
  }

}
class Particle
{
  //your code here
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX = myY = 200; 
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*60;
    myColor = color(255);
  }
  void move()
  {
    myX = myX + (float)(Math.cos(myAngle))*mySpeed;
    myY = myY + (float)(Math.sin(myAngle))*mySpeed;
  }
  void show()
  {
    noStroke();
    fill(myColor); 
    ellipse((float)myX, (float)myY, 3, 3);
  }
}



class OddballParticle extends Particle//inherits from Particle
{
  //your code here
  OddballParticle()
  {
    myX = myY= 200; 
  }
  void move()
  {
    myX = myX + (int)(Math.random()*3)-1; 
    myY = myY + (int)(Math.random()*3)-1;
  }
  void show()
  {
    fill((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
    rect((float)myX, (float)myY, 6, 6);
  }
}
