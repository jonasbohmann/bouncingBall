Ball[] b = new Ball[10];
int i = 0; //Zähler in mousePressed

void setup() {
  size(640, 360);
  for (int n; n<b.length; n++){
    b[i] = new Ball(0,0,random(7,30));
  }
}  



void draw() {
  background(255);
  if (b[0]!=null) //verhindert NullPointException
    while (i>-1){
      b[i].display();
      b[i].bounce();
    }
}

void mousePressed(){
  i++;
  b[i] = new Ball(float(mouseX),float(mouseY),random(5,30));
}
