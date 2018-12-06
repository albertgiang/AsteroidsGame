class Bullet extends Floater {
  public Bullet(Spaceship raymond){
    myCenterX = raymond.getX();
    myCenterY = raymond.getY();
    myColor = 167;
    myPointDirection = raymond.getPointDirection();
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + raymond.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + raymond.getDirectionY();
    
    corners = 1;
    xCorners = new int[corners];
    yCorners = new int[corners];
    
    xCorners[0] = 0;
    yCorners[0] = 0;
   }
   
   public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
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
