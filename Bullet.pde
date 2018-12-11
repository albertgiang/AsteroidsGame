class Bullet extends Floater {
  public Bullet(Spaceship raymond){
    myCenterX = raymond.getX();
    myCenterY = raymond.getY();
    myColor = #03FF00;
    myPointDirection = raymond.getPointDirection();
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + raymond.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + raymond.getDirectionY();
    
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    
    xCorners[0] = 4;
    yCorners[0] = 3;
    xCorners[1] = 10;
    yCorners[1] = 3;
    
    xCorners[2] = 4;
    yCorners[2] = -3;
    xCorners[3] = 10;
    yCorners[3] = -3;
   }
   
   public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
  }   
  
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw two lines
    line(xCorners[0], yCorners[0], xCorners[1], yCorners[1]);
    line(xCorners[2], yCorners[2], xCorners[3], yCorners[3]);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
   
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return myPointDirection;}
}
