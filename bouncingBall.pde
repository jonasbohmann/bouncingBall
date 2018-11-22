Ball[] b = new Ball[10]; //Ein Array aus Elementen der Klasse Ball
int countBalls=0; //Zählt die Anzahl der Bälle

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
  
  /* Die if-Bedingung verhindert, dass die Methoden von Ball ausgeführt werden,
   * wenn keine Bälle existieren.
   * Somit verhindert sie einen NullPointerException-Error
   */
   if (countBalls>0){
     
    /* Die For-Schleife zählt von null aufwärts, damit für
     * jeden Ball die danach folgenden Funktionen ausgeführt werden
     */
    for (int n=0; n<countBalls;n++){
      /* countBalls ist immer eine Stelle höher als der zugehörige Index des Arrays
       * Bei b[1] existieren bereits zwei Bälle, nämlich
       * b[0] und b[1]
       * Deshalb "countBalls-1"
       */
      b[n].bounce();
      b[n].display();
    }
  }
}

void mousePressed(){
  /* Die if-Schleife führt den nachfolgenden Code nur aus,
   * wenn das Array nicht voll ist, verhindert so ein zu vollen Array */
  if (countBalls<=b.length-1){
    
    /* Erstellt die Objekte vom Typ Ball an der Mausposition mit Durchmesser 20
     * Da countBalls von 0 startet, wird der erste Ball bei b[0] erstellt
     * und dann um 1 inkrementiert. Somit beträgt countBalls bei genau einem 
     * Ballobjekt 1 und auch später immer genau die Anzahl der Bälle
     */
    b[countBalls]=new Ball(mouseX,mouseY,random(15,30));
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
