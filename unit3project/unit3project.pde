int randX;
  
  void setup()
  {
    size(800, 600);
    random();
    noStroke();
  }
  
  void draw()
  {
    background(50, 255, 0);
    road(randX, 0);
  }
  
  void random()
  {    
    randX = int(random(1, 801));
    road(randX, 0);
  }
  
  void road(int xCord, int yCord) 
  {
    while(yCord != 601)
    {
      fill(0); 
      rect(xCord, yCord, 21, 1);
      
      fill(255);
      rect(xCord, yCord, 2, 1);
      rect(xCord + 19, yCord, 2, 1);
            
      if(yCord % 4 == 0)
      {
        fill(#FFF158); 
        rect(xCord + 10, yCord, 1, 2);
        
      }
      
      yCord ++;
    }
  }
  
  
