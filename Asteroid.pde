class Asteroid extends Floater {
  private int myRotationSpeed;
  
  public Asteroid(){
    myCenterX = Math.random() * 501;
    myCenterY = Math.random() * 501;
    myColor = 144;
    myDirectionX = Math.random() * 6;
    myDirectionY = Math.random() * 6;
    myPointDirection = Math.random() * 2 * Math.PI;
    myRotationSpeed = (int)(Math.random() * 7 - 3);
    
    corners = 12;
    xCorners = new int[corners];
    yCorners = new int[corners];
    
    xCorners[0] = (int)(Math.random() * 9 + 1);
    yCorners[0] = (int)(Math.random() * 9 + 1);
    
    xCorners[1] = (int)(Math.random() * 9 + 1);
    yCorners[1] = (int)(Math.random() * 9 + 1);
    
    xCorners[2] = (int)(Math.random() * 9 + 1);
    yCorners[2] = (int)(Math.random() * 9 + 1);
    
    xCorners[3] = (int)(Math.random() * 9 + 1);
    yCorners[3] = (int)(Math.random() * -10 - 1);
    
    xCorners[4] = (int)(Math.random() * 9 + 1);
    yCorners[4] = (int)(Math.random() * -10 - 1);
    
    xCorners[5] = (int)(Math.random() * 9 + 1);
    yCorners[5] = (int)(Math.random() * -10 - 1);
    
    xCorners[6] = (int)(Math.random() * -10 - 1);
    yCorners[6] = (int)(Math.random() * -10 - 1);
    
    xCorners[7] = (int)(Math.random() * -10 - 1);
    yCorners[7] = (int)(Math.random() * -10 - 1);
    
    xCorners[8] = (int)(Math.random() * -10 - 1);
    yCorners[8] = (int)(Math.random() * -10 - 1);
    
    xCorners[9] = (int)(Math.random() * -10 - 1);
    yCorners[9] = (int)(Math.random() * 9 + 1);
    
    xCorners[10] = (int)(Math.random() * -10 - 1);
    yCorners[10] = (int)(Math.random() * 9 + 1);
    
    xCorners[11] = (int)(Math.random() * -10 - 1);
    yCorners[11] = (int)(Math.random() * 9 + 1);
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
  
  public void turn (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
}
