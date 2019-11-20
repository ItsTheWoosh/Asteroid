class Particle extends GameObject {
  
  int timer;
  Particle() {
    
  }
  Particle(float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(1, 0);
    velocity.rotate(random(TWO_PI));
    velocity.setMag(random(0.4, 2));
    lives = 1;
    size = 1;
    timer = 60;
  }
  
  void show() {
    float alpha = map(timer, 0, 100, 255, 0);
    stroke(255, alpha);
    point(location.x, location.y);
  }
  
  void act(){
   super.act();   
   
   timer--;
   if(timer<0){
    lives = 0;
   } 
  }
}
