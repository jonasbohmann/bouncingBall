class Ball {
  float x,y; //Position im Raum
  float gravitation; /*Anziehungskraft (für Beschleunigung) 
                      *in pixeln pro quadratframe
                      *muss größer 1 sein */
                      
  float wirkungsgrad; //Damit die Kugel mit der Zeit weniger hoch hüpft
  float speed; //Geschwindigkeit der Kugel
  int diameter;
  
  /**Konstruktor */
  //Muss noch erstellt werden
  
  
  void bounce() {     
    if (y>=360-diameter/2){ //360 ist von Fenstergröße abhängig, diameter/2, damit der Rand der Kugel gezählt wird (Hoffentlich)
      speed=speed+gravitation; //Vergrößert die Geschwindigkeit 
                               //Wir rechnen hier quasi in pixeln/frame statt meter/sekunde
      y=y+speed; //Sorgt für Abwärtsbewegung
    }
    else {
      speed=speed-gravitation; // 1/gravitation, damit es langsamer wird
      y=y-speed;  //Sorgt für Aufwärtsbewegung
    }
  }
}
