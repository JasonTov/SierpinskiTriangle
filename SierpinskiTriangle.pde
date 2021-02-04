public int clicked = 0;
public int[] breakpoints = {1,2,3,5,9,21,34,89,150};

public void setup()
{
  size(300,300);
}
public void draw()
{
  background(0,0,0);
  sierpinski(0,300,300);
}
public void mouseClicked()//optional
{
  
  if(clicked<=7)
  {
    clicked+=1;
    System.out.println(breakpoints[clicked]);
  }
  
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 300/breakpoints[clicked])
  {
    triangle(x,y,x+len,y,x+len/2,y-len);
  }
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
