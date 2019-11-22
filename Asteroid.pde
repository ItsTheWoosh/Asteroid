boolean upKey, downKey, leftKey, rightKey, spaceKey;
PImage ship;
Ship myShip;
int shipSize = 100;
ArrayList<GameObject> gameObjects;
int gameMode = 0;
final int intro = 0;
final int gameIP = 1;
final int gameOver = 2;
int shipLives = 5;
int frames = 0;
boolean murk = true;

void setup() {
  size(800, 800);
  ship = loadImage("Ship.png");
  ship.resize(shipSize, shipSize);
  imageMode(CENTER);
  myShip = new Ship();
  gameObjects = new ArrayList<GameObject>();
  gameObjects.add(new SpaceRocks());
  gameObjects.add(new SpaceRocks());
  gameObjects.add(new SpaceRocks());
}
void draw() {
  println(gameMode, gameIP);
  if (gameMode == intro) {
    intro();
    //if (mousePressed == true) {
    //  gameMode += 1;
    //}
  } else if (gameMode == gameIP) {
    gameIP();
  } else if (gameMode == gameOver) {
    gameOver();
  }
}

void mouseReleased() {
  if (gameMode == intro) gameMode += 1;
}

void keyPressed() {
  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == RIGHT) rightKey = true;
  if (key == ' ') spaceKey = true;
}

void keyReleased() {
  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN) downKey = false;
  if (keyCode == LEFT) leftKey = false;
  if (keyCode == RIGHT) rightKey = false;
  if (key == ' ') spaceKey = false;
}
