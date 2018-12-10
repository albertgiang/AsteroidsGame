Spaceship raymond;
Star [] emptySpace = new Star[500];
ArrayList <Asteroid> andy = new ArrayList <Asteroid>();
ArrayList <Bullet> david = new ArrayList <Bullet>();

boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;
boolean fIsPressed = false;

public void setup() {
  size(500, 500);
  background(0);
  
  for(int i = 0; i < emptySpace.length; i++){
    emptySpace[i] = new Star();
  }
  
  raymond = new Spaceship();
  
  for(int i = 0; i < 1000; i++){
    andy.add(new Asteroid());
  }
}

public void draw() {
  background(0);
  raymond.show();
  raymond.move();
  spaceshipControls();
  destroyAsteroid();
  fireLasers();
  
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
  if(wIsPressed == true){raymond.accelerate(0.25);}
  if(aIsPressed == true){raymond.turn(-10);}
  if(dIsPressed == true){raymond.turn(10);}
}

public void spaceshipEffects() {
  if(wIsPressed == true){
    
  }
}

public void fireLasers() {
  if (fIsPressed == true){
    david.add(new Bullet(raymond));
  }
  
  for(int i = 0; i < david.size(); i++){
    if(david.get(i).getX() > width || david.get(i).getX() < 0 || david.get(i).getY() > height || david.get(i).getY() < 0){
      david.remove(i);
    }
  }
}

public void keyPressed() {
  if(key == 'w'){
    wIsPressed = true;
  } else if (key == 'a'){
    aIsPressed = true;
  } else if (key == 'd'){
    dIsPressed = true;
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
  if(key == 'w'){
    wIsPressed = false;
  } else if (key == 'a'){
    aIsPressed = false;
  } else if (key == 'd'){
    dIsPressed = false;
  } else if (key == 'f'){
    fIsPressed = false;
  }
  
}

public void destroyAsteroid() {
  for(int i = 0; i < andy.size(); i++){
    double shipDistance = dist(raymond.getX(), raymond.getY(), andy.get(i).getX(), andy.get(i).getY());
    if(shipDistance < 10){
      andy.remove(i);
    }
  }
  
  for(int k = david.size() - 1; k > 0; k--){
    for(int i = andy.size() - 1; i > 0; i--){
      double laserDistance  = dist(david.get(k).getX(), david.get(k).getY(), andy.get(i).getX(), andy.get(i).getY());
      
      if(laserDistance < 10){
        andy.remove(i);
        david.remove(k);
        break;
      }
    }
  }
}
