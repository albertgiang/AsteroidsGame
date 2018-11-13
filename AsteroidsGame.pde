Spaceship raymond;
Star[] emptySpace = new Star[500];

boolean eightIsPressed = false;
boolean fourIsPressed = false;
boolean sixIsPressed = false;

public void setup() {
  size(500, 500);
  background(0);
  
  for(int i = 0; i < emptySpace.length; i++){
    emptySpace[i] = new Star();
  }
  
  raymond = new Spaceship();
}

public void draw() {
  background(0);
  raymond.show();
  raymond.move();
  spaceshipControls();
  
  for(int i = 0; i < emptySpace.length; i++){
    emptySpace[i].show();
  }
}

public void spaceshipControls() {
  if(eightIsPressed == true){raymond.accelerate(0.25);}
  if(fourIsPressed == true){raymond.turn(-10);}
  if(sixIsPressed == true){raymond.turn(10);}
}

public void spaceshipEffects() {
  if(eightIsPressed == true){
    
  }
}

public void keyPressed() {
  if(key == '8'){
    eightIsPressed = true;
  } else if (key == '4'){
    fourIsPressed = true;
  } else if (key == '6'){
    sixIsPressed = true;
  }
  
  if (key == '5'){
    for(int i = 0; i < emptySpace.length; i++){
      emptySpace[i].resetStars();
    }
    
    raymond.setDirectionX(0);
    raymond.setDirectionY(0);
    raymond.setX((int)(Math.random() * 500) + 1);
    raymond.setY((int)(Math.random() * 500) + 1);
  }
}

public void keyReleased() {
  if(key == '8'){
    eightIsPressed = false;
  } else if (key == '4'){
    fourIsPressed = false;
  } else if (key == '6'){
    sixIsPressed = false;
  }
}
