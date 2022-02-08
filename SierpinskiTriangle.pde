public void setup()
{
  size(500, 500);
  background(54, 39, 6);
  stroke(70, 78, 46);
  fill(172, 185, 146);
  
}
public void draw()
{
  sierpinski(0, 500, 500);

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 50){
    fill(172, 185, 146);
    triangle((float)x, (float)y, (float)(len/2) + x, (float)y-(len), (float)x + (len), + (float)y);
    fill(233, 229, 214);
    triangle((float)x, (float)y, (float)(len/2) + x, (float)y-(len/2), (float)x + (len), + (float)y);
    fill(70, 78, 46);
    line((float)(len/2) + x, (float)y-(len/2), (float)(len/2) + x, (float)y-(len));
}
  else{
      sierpinski(x, y, len/2);
      sierpinski(x + len/2, y, len/2);
      sierpinski(x + len/4, y - len/2, len/2);
  }

}
