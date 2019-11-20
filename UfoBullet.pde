class UfoBullet extends GameObject {
  
  int a;
  
  UfoBullet(float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(myShip.location.x - x, myShip.location.y - y);
    velocity.setMag(10);
    size = 10;
    a = 120;
    lives = 2;
  }
  
  void show() {
    noStroke();
    fill(#FF0000);
    ellipse(location.x, location.y, size, size);
  }
  
  void act() {
    super.act();
    a --;
    if (a == 0) {
      if (dist(location.x, location.y, myShip.location.x, myShip.location.y) < size / 2 + myShip.size / 2) {
        lives = 0;
        myShip.lives--;
      }
    }
  }
}
