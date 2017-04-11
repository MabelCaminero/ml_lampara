PImage lamp;
PImage backg;
PImage alo;
Mover[] movers = new Mover[15];

void setup() {
  size(700, 500);
  lamp = loadImage("lampara2.png");
  backg = loadImage("thenightisdark.png");
  alo = loadImage("resplandors2.png");
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }
}

void draw() {
  float r= random(340,360);

  background(110,80,110);
  image(backg,0,0);
  
  if ((mouseX < 300)||(mouseX > 550)){
    background (11,6,38);
  }
  
  image(lamp, mouseX-50, mouseY);
  image (alo, mouseX-r/2, mouseY-r/2+120, r, r);

  for (int i = 0; i < movers.length; i++) {
    movers[i].update();
    movers[i].display();
  }
}