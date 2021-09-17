void setup() 
{
  size(500,500);
  background(0);
  frameRate(8);
}

float scaleColor = 0;
float theColor = 0;

void draw()
{
  //Set random color to star first, then increase/decrease to random values :)
  for (int y = 25; y <=475; y+=50) 
  {
    for (int x = 25; x<=475; x+=50)
    {
      float newColor = (float)(Math.random()*256);
      while (scaleColor > newColor)
      {
        //System.out.println(scaleColor);
        fill(scaleColor,scaleColor, scaleColor);
        scaleColor--;
        scale(x,y);
      }
      while (scaleColor < newColor)
      {
        //System.out.println(scaleColor);
        fill(scaleColor,scaleColor, scaleColor);
        scaleColor++;
        scale(x,y);
      }
    }
  }
  for (int b = 0; b<= 500; b+=50)
  {
    for (int a = 0; a<=500; a+=50)
    {
      float aColor = (float)(Math.random()*256);
      while (theColor > aColor)
      {
       // System.out.println(scaleColor);
        fill(theColor, theColor, theColor);
        
        theColor--;
        scale(a,b);
      }
      while (theColor < aColor)
      {
       // System.out.println(scaleColor);
        fill(theColor, theColor, theColor);
        
        theColor++;
        scale(a,b);
      }
    }
  }
}


void scale(int x, int y)   //coordinates of center of the shape (25,25 for top left)
{
  strokeWeight(2);
  stroke(0);
  beginShape();
  vertex(x,y-25);
  vertex(x-5,y-5);
  vertex(x-25,y);
  vertex(x-5,y+5);
  vertex(x,y+25);
  vertex(x+5,y+5);
  vertex(x+25,y);
  vertex(x+5,y-5);
  endShape();
}
