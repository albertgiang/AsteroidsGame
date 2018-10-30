class Spaceship extends Floater {   
    Spaceship(){
      corners = 36;
      xCorners = new int[corners];
      yCorners = new int[corners];
      
      xCorners[0] = 3;
      yCorners[0] = 4;
      
      xCorners[1] = 4;
      yCorners[1] = 3;
      
      xCorners[2] = 4;
      yCorners[2] = 2;
      
      xCorners[3] = 5;
      yCorners[3] = 1;
      
      xCorners[4] = 5;
      yCorners[4] = -1;
      
      xCorners[5] = 4;
      yCorners[5] = -2;
      
      xCorners[6] = 4;
      yCorners[6] = -3;
      
      xCorners[7] = 3;
      yCorners[7] = -4;
      
      //CONTINUE HERE
      
      xCorners[8] = 3;
      yCorners[8] = 4;
      
      xCorners[9] = 3;
      yCorners[9] = 4;
      
      xCorners[10] = 3;
      yCorners[10] = 4;
      
      xCorners[11] = 3;
      yCorners[11] = 4;
      
      xCorners[12] = 3;
      yCorners[12] = 4;
      
      xCorners[13] = 3;
      yCorners[13] = 4;
      
      xCorners[14] = 3;
      yCorners[14] = 4;
      
      xCorners[15] = 3;
      yCorners[15] = 4;
      
      xCorners[16] = 3;
      yCorners[16] = 4;
      
      xCorners[17] = 3;
      yCorners[17] = 4;
      
      xCorners[18] = 3;
      yCorners[18] = 4;
      
      xCorners[19] = 3;
      yCorners[19] = 4;
      
      xCorners[20] = 3;
      yCorners[20] = 4;
      
      xCorners[21] = 3;
      yCorners[21] = 4;
      
      xCorners[22] = 3;
      yCorners[22] = 4;
      
      xCorners[23] = 3;
      yCorners[23] = 4;
      
      xCorners[24] = 3;
      yCorners[24] = 4;
      
      xCorners[25] = 3;
      yCorners[25] = 4;
      
      xCorners[26] = 3;
      yCorners[26] = 4;
      
      xCorners[27] = 3;
      yCorners[27] = 4;
      
      xCorners[28] = 3;
      yCorners[28] = 4;
      
      xCorners[29] = 3;
      yCorners[29] = 4;
      
      xCorners[30] = 3;
      yCorners[30] = 4;
      
      xCorners[31] = 3;
      yCorners[31] = 4;
      
      xCorners[32] = 3;
      yCorners[32] = 4;
      
      xCorners[33] = 3;
      yCorners[33] = 4;
      
      xCorners[34] = 3;
      yCorners[34] = 4;
      
      xCorners[35] = 3;
      yCorners[35] = 4;
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
