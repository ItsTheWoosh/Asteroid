abstract class GameObject {
  int lives;
  int size;
  PVector location;
  PVector velocity;
  
  GameObject() {
    
  }
  
  void show() {
    
  }
  
  void act() {
    location.add(velocity);
    
    if (location.x <        - shipSize / 2) location.x = width  + shipSize / 2;
    if (location.x > width  + shipSize / 2) location.x =        - shipSize / 2;
    if (location.y <        - shipSize / 2) location.y = height + shipSize / 2;
    if (location.y > height + shipSize / 2) location.y =        - shipSize / 2;
  }
}
