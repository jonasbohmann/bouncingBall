class Ball {
  float x,y; // Position im Raum
  float gravitation=1.3; // Anziehungskraft (für Beschleunigung) in pixeln pro quadratframe                                              
  float wirkungsgrad=0.9; // Damit die Kugel mit der Zeit weniger hoch hüpft
  float speed=0; // Geschwindigkeit der Kugel
  float diameter;
  
 //Konstruktor der Klasse Ball
  Ball(float x, float y,  float dia){
    this.x=x;
    this.y=y;
    this.diameter=dia;
  }

  //Sorgt dafüt, dass Ball angezeigt wird
  void display() {
    stroke(0);
    fill(255,100,100);
    ellipse(x,y,diameter,diameter);
  }  
  
  //Sorgt für die Bewegung des Balls
  void bounce() {     
    if (y>=360-(diameter/2)-1){
      speed=speed*(-1*wirkungsgrad); // Wenn der Ball am Boden ist, wird die Geschwindigkeit umgekehrt, reduziert durch den Wirkungsgrad<1
    }
    
    /*Beschleunigung bzw. Abbremsen des Balls
    * Wenn die Geschwindigkeit umgekehrt ist, steigt der Ball
    * (Wenn er gerade den Boden berührt hat */
    speed=speed+gravitation;
    y=y+speed;   
    
    /* Wenn der Ball teilweise im "Boden" steckt, wird er auf den Boden gesetzt
     * Ohne diese Funktion würde er im Boden versinken */
    if (y>=360-(diameter/2)-1){
      y=360-(diameter/2)-1;
    }
    
  }
  
}
