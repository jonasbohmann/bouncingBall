Ball[] b = new Ball[10]; //Ein Array aus Elementen der Klasse Ball
int countBalls=0; //Zählt die Anzahl der Bälle

float mouseX1,mouseX2;
float mouseY1,mouseY2;

float speedX, speedY;

int screenX=1000;
int screenY=600;


// Nötig, um size() mit Variablen nutzen zu können
void settings(){
  size(screenX, screenY);
}

void setup() {
  frameRate(60); //Erhöht die framerate -> flüssiger
}  



void draw() {
  background(255); // Weißer Hintergrund
  
   if (countBalls>0){
    for (int n=0; n<countBalls;n++){
      b[n].bounce();
      b[n].display();
    }
  }
  
  if (mousePressed){
    float strokeColourX,strokeColourY;
    
    if (mouseX1-mouseX>0)
      strokeColourX=mouseX1-mouseX;
      else strokeColourX=(mouseX1-mouseX)*-1;
      
    if (mouseY1-mouseY>0)
      strokeColourY=mouseY1-mouseY;
      else strokeColourY=(mouseY1-mouseY)*-1;

    
    strokeWeight(3);
    stroke((strokeColourX+strokeColourY),0,0);
    line(mouseX1,mouseY1,mouseX,mouseY);
  }
}

void mousePressed(){
  mouseX1=mouseX;
  mouseY1=mouseY;
}

void mouseReleased(){
  mouseX2=mouseX;
  mouseY2=mouseY;
  
  if (countBalls<=b.length-1){

    b[countBalls]=new Ball(mouseX,mouseY,random(15,30),(mouseX1-mouseX2)/3,(mouseY1-mouseY2)/3);
  }
  countBalls++;
  
  //Wenn das Array voll ist
  if (countBalls>b.length){
    
    // Setzte b[] und countBalls komplett zurück, dann gehts beim nächsten Klick wieder von vorne los
    for (int i=0; i<b.length;i++){
      b[i]=null;
    }
    countBalls=0;
  }

}
