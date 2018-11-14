Ball b1;

void setup() {
  size(640, 360);
  b1 = new Ball(300,0,30);
}

void draw() {
  background(255);
  b1.display();
  b1.bounce();
}
