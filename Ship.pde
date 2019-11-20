class Ship extends GameObject {
  //1. instance variables
 
  PVector direction;
  int shotTimer;
  int threshold;
 
  //2. Constructor(s)
  Ship() {
    lives = 3;
    shotTimer = 10;
    threshold = 5;
    location = new PVector(width / 2, height / 2);
    velocity = new PVector(0, 0 );
    direction = new PVector(0, -0.1);
  }
  
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    image(ship, 0, 0);
    popMatrix();
  }
  
  void act() { //Ship movement
    //location.add(velocity); //adds velocity vector to location
    super.act();
    shotTimer++;
    if (upKey)   velocity.add(direction); //Go up
    if (downKey) velocity.sub(direction); //\Go dow
    if (leftKey) direction.rotate(-radians(2)); //turn left
    if (rightKey) direction.rotate(radians(2)); //turn right
    if (spaceKey && shotTimer >= threshold) {
      gameObjects.add(new Bullet());
      shotTimer = 0;
    }
    //location.x //this is the new 'x'
  }
}
