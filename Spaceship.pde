class Spaceship extends Floater {   
    public Spaceship(){
      myCenterX = 250;
      myCenterY= 250;
      myColor = 255;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;
      
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
      
      xCorners[8] = 1;
      yCorners[8] = -4;
      
      xCorners[9] = 1;
      yCorners[9] = -8;
      
      xCorners[10] = 12;
      yCorners[10] = -8;
      
      xCorners[11] = 12;
      yCorners[11] = -9;
      
      xCorners[12] = -12;
      yCorners[12] = -9;
      
      xCorners[13] = -12;
      yCorners[13] = -8;
      
      xCorners[14] = -1;
      yCorners[14] = -8;
      
      xCorners[15] = -1;
      yCorners[15] = -4;
      
      xCorners[16] = -3;
      yCorners[16] = -4;
      
      xCorners[17] = -4;
      yCorners[17] = -3;
      
      xCorners[18] = -4;
      yCorners[18] = -2;
      
      xCorners[19] = -5;
      yCorners[19] = -2;
      
      xCorners[20] = -5;
      yCorners[20] = -1;
      
      xCorners[21] = -4;
      yCorners[21] = -1;
      
      xCorners[22] = -4;
      yCorners[22] = 1;
      
      xCorners[23] = -5;
      yCorners[23] = 1;
      
      xCorners[24] = -5;
      yCorners[24] = 2;
      
      xCorners[25] = -4;
      yCorners[25] = 2;
      
      xCorners[26] = -4;
      yCorners[26] = 3;
      
      xCorners[27] = -3;
      yCorners[27] = 4;
      
      xCorners[28] = -1;
      yCorners[28] = 4;
      
      xCorners[29] = -1;
      yCorners[29] = 8;
      
      xCorners[30] = -12;
      yCorners[30] = 8;
      
      xCorners[31] = -12;
      yCorners[31] = 9;
      
      xCorners[32] = 12;
      yCorners[32] = 9;
      
      xCorners[33] = 12;
      yCorners[33] = 8;
      
      xCorners[34] = 1;
      yCorners[34] = 8;
      
      xCorners[35] = 1;
      yCorners[35] = 4;
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
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    
    if(eightIsPressed == true){
      fill(255, 0, 0);
      ellipse((float)(myCenterX - 260), (float)(myCenterY - 253), 5, 5);
      ellipse((float)(myCenterX - 260), (float)(myCenterY - 248), 5, 5);
    }

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
