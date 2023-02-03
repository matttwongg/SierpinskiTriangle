public void setup()
{
  noLoop();
  size(1000,1000);
}
int a=0;
public void draw()
{
  background(0,0,0);
  sierpinski(100,900,a);
  
}
public void mouseDragged()//optional
{
  a=mouseX;
  redraw();
}
public void sierpinski(int x, int y, int len) 
{
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  
  if(len<=20){
    triangle(x,y,x+len,y,x+len/2,y-len);
    triangle(x,y,x+len/2,y,x-len/2,y-len/2);

  } else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
