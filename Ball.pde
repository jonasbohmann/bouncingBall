class Ball {
<<<<<<< HEAD
  float x,y; //Position im Raum
  float gravitation=1.2; /*Anziehungskraft (für Beschleunigung) 
                      *in pixeln pro quadratframe
                      */                 
  float wirkungsgrad=0.9; //Damit die Kugel mit der Zeit weniger hoch hüpft
  float speed=0; //Geschwindigkeit der Kugel
=======
  float x,y; // Position im Raum
  float gravitation=1.5; // TODO: Muss getestet werden!
  float wirkungsgrad=0.9; // Damit die Kugel mit der Zeit weniger hoch hüpft
  float speed=0; // Geschwindigkeit der Kugel
>>>>>>> 032ee516b546ebfc87a3b5c5187d290c323722b8
  int diameter;

  
<<<<<<< HEAD
  //speed=0; //Damit die Kugel nach dem erscheinen erst beschleunigt
  
  /**Konstruktor */
  Ball(float x, float y,  int dia){
    this.x=x;
    this.y=y;
    this.diameter=dia;
  }

  void display() {
    stroke(0);
    fill(127,100);
    ellipse(x,y,diameter,diameter);
  }  
  
  void bounce() {     
    if (y>=360-(diameter/2)){
      speed=speed*(-1*wirkungsgrad); //wenn der Ball am Boden ist, wird die Geschwindigkeit umgekehrt, reduziert durch den Wirkungsgrad<1
=======
  // TODO: Konstruktor erstellen
  
  void bounce() { 
    
    if (y>=360-(diameter/2)){
     
      speed=speed*(-1*wirkungsgrad); // Wenn der Ball am Boden ist, wird die Geschwindigkeit umgekehrt, reduziert durch den Wirkungsgrad<1
      speed=speed+gravitation;
      y=y+speed;

>>>>>>> 032ee516b546ebfc87a3b5c5187d290c323722b8
    }
    speed=speed+gravitation;
    y=y+speed;    
  }
  
  /*void stop(){
    if(y>=360-(diameter/2) && 
  }*/
}
