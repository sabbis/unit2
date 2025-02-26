int randX;
int randY;
ArrayList<String> roadCords;
  
void setup()
{
    roadCords = new ArrayList<String>();
    size(800, 600);
    background(#60AD1A);
    random();
    noStroke();
    
    while (randX <= width)
    {
      int randDist = int(random(100, 201));
      road(randX, 0, true); 
      
      randX += randDist;
    }
    
    while (randY <= height)
    {
      int randDist = int(random(90, 150));
      road(0, randY, false); 
      
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
      rect(xCord-2, y, 2, 1);
      rect(xCord + 11, y, 2, 1);
      
      roadCords.add(xCord + "," + y);
      
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
      
      fill(255);
      rect(x, yCord-2, 1, 2);
      rect(x, yCord+11, 1, 2);
      
      if(roadCords.contains(x + "," + yCord))
      {
        
        noFill();
        strokeWeight(3);
        stroke(255);
        rect(x, yCord, 10, 11);
        x += 11;
        noStroke();
        
      }
      
      if (x % 5 == 0)
      {
        fill(#FFF158); 
        rect(x, yCord + 5, 1, 1); 
      }
      
      roadCords.add(x + "," + yCord);
    }
  }
}
