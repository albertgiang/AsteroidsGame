Spaceship raymond;

public void setup() {
  size(500, 500);
  background(0);
  raymond = new Spaceship();
}

public void draw() {
  raymond.show();
  raymond.move();
}

public void keyPressed() {
  if(key == 8){
    raymond.accelerate(1);
  }
  
  if(key == 4){
    raymond.turn(-1);
  }
  
  if(key == 6){
    raymond.turn(1);
  }
}
