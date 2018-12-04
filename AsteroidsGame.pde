Spaceship raymond;
Star [] emptySpace = new Star[500];
ArrayList <Asteroid> andy = new ArrayList <Asteroid>();
ArrayList <Bullet> david = new ArrayList <Bullet>();

boolean eightIsPressed = false;
boolean fourIsPressed = false;
boolean sixIsPressed = false;
boolean fIsPressed = false;

public void setup() {
  size(500, 500);
  background(0);
  
  for(int i = 0; i < emptySpace.length; i++){
    emptySpace[i] = new Star();
  }
  
  raymond = new Spaceship();
  
  for(int i = 0; i < 25; i++){
    andy.add(new Asteroid());
  }
}

public void draw() {
  background(0);
  raymond.show();
  raymond.move();
  spaceshipControls();
  shipHitsAsteroid();
  
  for(int i = 0; i < emptySpace.length; i++){
    emptySpace[i].show();
  }
  
  for(int i = 0; i < andy.size(); i++){
    andy.get(i).show();
    andy.get(i).move();
  }
  
  for(int i = 0; i < david.size(); i++){
    david.get(i).show();
    david.get(i).move();
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

public void fireLasers() {
  if (fIsPressed == true){
    david.add(new Bullet(raymond));
  }
}

public void keyPressed() {
  if(key == '8'){
    eightIsPressed = true;
  } else if (key == '4'){
    fourIsPressed = true;
  } else if (key == '6'){
    sixIsPressed = true;
  } else if (key == 'f'){
    fIsPressed = true;
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
  } else if (key == 'f'){
    fIsPressed = false;
  }
  
}

public void shipHitsAsteroid() {
  for(int i = 0; i < andy.size(); i++){
    double distance = dist(raymond.getX(), raymond.getY(), andy.get(i).getX(), andy.get(i).getY());
    if(distance < 10){
      andy.remove(i);
    }
  }
}
