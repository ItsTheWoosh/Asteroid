void gameIP() {
   println("ree" + gameMode, gameIP);
  frames++;
  background(0);
  myShip.show();
  myShip.act();
  rect(750, 750, 800, 800);
  text(shipLives, 780, 780);
  if (frames == 1000) {
    gameObjects.add(new SpaceRocks(100, random(0, 801), random(0, 801)));
    frames = 0;
  }
  for (int i = 0; i < gameObjects.size(); i++) {
    GameObject bullet = gameObjects.get(i);
    bullet.show();
    bullet.act();
    if (bullet.lives == 0) {
      gameObjects.remove(i);
    }
  }
  if (shipLives == 0) {
    gameMode++;
  }
}
