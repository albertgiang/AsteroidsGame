class Asteroid extends Floater {
  private int myRotationSpeed, myXMultiplier, myYMultiplier;
  
  public Asteroid(){
    myCenterX = Math.random() * 501;
    myCenterY = Math.random() * 501;
    myColor = 144;
    myDirectionX = Math.random() * 6;
    myDirectionY = Math.random() * 6;
    myPointDirection = Math.random() * 2 * Math.PI;
    myRotationSpeed = (int)(Math.random() * 7 - 3);
    
    corners = 32;
    xCorners = new int[corners];
    yCorners = new int[corners];
    
    //to do: convert this into for loop xy corners[i] using myX and Y multipler
    
    xCorners[0] = (int)(int)(Math.random() * 21 + 5);
    yCorners[0] = (int)(Math.random() * 21 + 5);
    
    xCorners[1] = (int)(Math.random() * 21 + 5);
    yCorners[1] = (int)(Math.random() * 21 + 5);
    
    xCorners[2] = (int)(Math.random() * 21 + 5);
    yCorners[2] = (int)(Math.random() * 21 + 5);
    
    xCorners[3] = (int)(Math.random() * 21 + 5);
    yCorners[3] = (int)(Math.random() * 21 + 5);
    
    xCorners[4] = (int)(Math.random() * 21 + 5);
    yCorners[4] = (int)(Math.random() * 21 + 5);
    
    xCorners[5] = (int)(Math.random() * 21 + 5);
    yCorners[5] = (int)(Math.random() * 21 + 5);
    
    xCorners[6] = (int)(Math.random() * 21 + 5);
    yCorners[6] = (int)(Math.random() * 21 + 5);
    
    xCorners[7] = (int)(Math.random() * 21 + 5);
    yCorners[7] = (int)(Math.random() * 21 + 5);
    
    
    
    
    
    
    xCorners[8] = (int)(Math.random() * 21 + 5);
    yCorners[8] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[9] = (int)(Math.random() * 21 + 5);
    yCorners[9] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[10] = (int)(Math.random() * 21 + 5);
    yCorners[10] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[11] = (int)(Math.random() * 21 + 5);
    yCorners[11] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[12] = (int)(Math.random() * 21 + 5);
    yCorners[12] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[13] = (int)(Math.random() * 21 + 5);
    yCorners[13] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[14] = (int)(Math.random() * 21 + 5);
    yCorners[14] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[15] = (int)(Math.random() * 21 + 5);
    yCorners[15] = (int)(-1 * (Math.random() * 25 + 1));
    
    
    
    
    
    
    xCorners[16] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[16] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[17] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[17] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[18] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[18] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[19] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[19] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[20] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[20] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[21] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[21] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[22] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[22] = (int)(-1 * (Math.random() * 25 + 1));
    
    xCorners[23] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[23] = (int)(-1 * (Math.random() * 25 + 1));
    
    
    
    
    
    xCorners[24] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[24] = (int)(Math.random() * 21 + 5);
    
    xCorners[25] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[25] = (int)(Math.random() * 21 + 5);
    
    xCorners[26] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[26] = (int)(Math.random() * 21 + 5);
    
    xCorners[27] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[27] = (int)(Math.random() * 21 + 5);
    
    xCorners[28] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[28] = (int)(Math.random() * 21 + 5);
    
    xCorners[29] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[29] = (int)(Math.random() * 21 + 5);
    
    xCorners[30] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[30] = (int)(Math.random() * 21 + 5);
    
    xCorners[31] = (int)(-1 * (Math.random() * 25 + 1));
    yCorners[31] = (int)(Math.random() * 21 + 5);
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
