Ball[] b = new Ball[10]; //Ein Array aus Elementen der Klasse Ball
int countBalls=0; //Zählt die Anzahl der Bälle

void setup() {
  frameRate(60); //Erhöht die framerate -> flüssiger
  size(640, 360);
  
  /* Test-Code
   * erstellt drei neue Bälle an unterschiedlichen Positionen */
  
  /*  b[0]=new Ball(600,300,20);
    b[1]=new Ball(400,300,20);
    b[2]=new Ball(200,300,20);
    countBalls=3;
    */
    
  /* Selbst diese "manuell" angelegten Bälle spawnen scheinbar
   * an genau derselben Stelle
   * scheinbar beeinflussen sie gegenseitig ihre Position und Geschwindigkeit
   * Auch beu durch Mausklicks erzeugten Bällen werden alle auf die neue
   * Position gesetzt. Zusätzlich werden sie mit jedem neuen Ball schneller.
   */
}  



void draw() {
  background(255);
  
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
