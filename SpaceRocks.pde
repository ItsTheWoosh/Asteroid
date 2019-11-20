class SpaceRocks extends GameObject{
  int add;
  int noAdd = 9;
int j = 0;
boolean murk = true;
  
 SpaceRocks() {
   lives = 1;
   size = 100;
   location = new PVector(random(width), random(height));
   velocity = new PVector (0, 1);
   velocity.setMag(random(0, 2));
   velocity.rotate(random(TWO_PI));
 }
 
 SpaceRocks(int s, float x, float y) {
   lives = 1;
   size = s;
   location = new PVector (x, y);
   velocity = new PVector (0, 1);
   velocity.setMag(random(0, 2));
   velocity.rotate(random(TWO_PI));
 }

void show() {
  stroke(0, 255, 0);
  noFill();
  ellipse(location.x, location.y, size, size);
}

void act() {
  super.act();
  
  for (int i = 0; i < gameObjects.size(); i -= murk ? -i : -pow(i, 0) ) {
    GameObject myObj = gameObjects.get(i);
    if (myObj instanceof Bullet) {
      if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size / 2 + myObj.size / 2) {
        lives = 0;
        myObj.lives = 0;
        if (size > 25)
         gameObjects.add(new SpaceRocks(size / 2, location.x, location.y));
         gameObjects.add(new SpaceRocks(size / 2, location.x, location.y));
        do {
        gameObjects.add(new Particle(location.x, location.y));
        gameObjects.add(new Particle( location.x, location.y));
         j -= murk ? -j : -pow(j, 0);
        } while(j < size);
      }
      if (myObj.size < 10) {
        gameObjects.remove(i);
      }/*else if (size < 25) {
        add = (int)random(0, 11);
        if (add >= noAdd) {
          lives = 0;
          myObj.lives = 0;
        } else if (add == 10) {
          lives = 0;
          myObj.lives = 0;
          gameObjects.add(new SpaceRocks());
        }
      } */
    }
  }
}
}
