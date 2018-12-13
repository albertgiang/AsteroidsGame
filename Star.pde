class Star {
  private int myX, myY, myColor;
  
  public Star(){
    myX = (int)(Math.random() * 1001);
    myY = (int)(Math.random() * 1001);
    myColor = 255;
  }
  
  public void resetStars(){
    fill(myColor);
    myX = (int)(Math.random() * 1001);
    myY = (int)(Math.random() * 1001);
  }
  
  public void show(){
    fill(myColor);
    ellipse(myX, myY, 1, 1);
  }
}
