class Bullet extends GameObject {
  int timer;
  Bullet() {
    location = new PVector (myShip.location.x, myShip.location.y);
    velocity = new PVector (myShip.direction.x, myShip.direction.y);
    velocity.setMag(10);
    lives = 1;
    timer = 30;
    size = 25;
    //location.x = myShip.location.x;
    //location.y = myShip.location.y;
    //velocity.x = myShip.velocity.x;
    //velocity.y = myShip.velocity.y;
  }

  void show() {
    noFill();
    fill(255);
    ellipse(location.x, location.y, 25, 25);
  }

  void act() {
    super.act();
    location.add(velocity);
    timer--;
    if (timer == 0) lives = 0;
  }
}
