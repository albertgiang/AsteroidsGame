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
     
    for(int i = 0; i < corners; i++){
      if(i < 8){
        xCorners[i] = (int)(Math.random() * 6 + 5);
        yCorners[i] = (int)(Math.random() * 6 + 5);
      } else if(i >= 8 && i < 16){
        xCorners[i] = (int)(Math.random() * 6 + 5);
        yCorners[i] = (int)(-1 * (Math.random() * 6 + 5));
      } else if(i >= 16 && i < 24){
        xCorners[i] = (int)(-1 * (Math.random() * 6 + 5));
        yCorners[i] = (int)(-1 * (Math.random() * 6 + 5));
      } else if(i >= 24 && i < 32){
        xCorners[i] = (int)(-1 * (Math.random() * 6 + 5));
        yCorners[i] = (int)(Math.random() * 6 + 5);
      }
     }  
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
  
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX > width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }
    
    myPointDirection+=myRotationSpeed;
  }   
}
