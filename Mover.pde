// The Mover tracks position, velocity, and acceleration 

  
class Mover {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  
  Mover() {
    position = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    topspeed = 7;
  }
  
  void update() {
    
    // Vector desde una posición hacia el mouse
    PVector mouse = new PVector(mouseX,mouseY+100);
    acceleration = PVector.sub(mouse,position);
    acceleration.normalize();
    acceleration.mult(0.3);
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    position.add(velocity);
  }

  void display() {
    PImage luz;
    luz = loadImage("luz3.png");
    image(luz,position.x,position.y);
  }
}