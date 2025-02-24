int randX;
int randY;
ArrayList<Integer> roadCords;
  
  void setup()
  {
    roadCords = new ArrayList<Integer>();
    size(800, 600);
    background(#60AD1A);
    random();
    noStroke();
    while (randX <= height)
    {
      int randDist = int(random(100, 201));
      road(randX, 0, true); 
      roadCords.add(randX);
      randX += randDist;
    }
    
    while (randY <= width)
    {
      int randDist = int(random(30, 100));
      road(0, randY, false); 
      roadCords.add(randY);
      randY += randDist;
    }

  }
  
  void draw()
  {
    
  }
  
  void random()
  {    
    randX = int(random(1, 150));
    randY = int(random(1, 100));
    
  }
  
void road(int xCord, int yCord, boolean vertical) 
{
  if (vertical)
  {
    for (int y = 0; y <= height; y++) 
    {
      fill(0); 
      rect(xCord, y, 11, 1); 
      
      fill(255);
      rect(xCord-2, yCord, 2, 1);
      rect(xCord + 11, yCord, 2, 1);

      if (y % 5 == 0)
      {
        fill(#FFF158); 
        rect(xCord + 5, y, 1, 1); 
      }
    }
  }
  else
  {
    for (int x = 0; x <= width; x++) 
    {
      fill(0); 
      rect(x, yCord, 1, 11); 
      
      if (x % 5 == 0)
      {
        fill(#FFF158); 
        rect(x, yCord + 5, 1, 1); 
      }
    }
  }
}
