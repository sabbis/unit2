void setup()
{
  size(800, 600);
}

void draw()
{
  background(255);
  road(50, 50);
}

void road(int xCord, int yCord) 
{
  fill(0); 
  rect(xCord, yCord, 21, 1);
  
  fill(255,0,0);
  rect(xCord, yCord, 3, 1);
  rect(xCord + 9, yCord, 3, 1);
  
  fill(#FFF158); 
  rect(xCord + 4, yCord, 5, 1);
}
