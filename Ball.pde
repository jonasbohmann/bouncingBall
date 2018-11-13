class Ball {
  float x,y; //Position im Raum
  float gravitation; /*Anziehungskraft (für Beschleunigung) 
                      *in pixeln pro quadratframe
                      */
                      
  float wirkungsgrad; //Damit die Kugel mit der Zeit weniger hoch hüpft
  float speed; //Geschwindigkeit der Kugel
  int diameter;
  
  /**Konstruktor */
  //Muss noch erstellt werden
  
  
  wirkungsgrad=0.9;
  speed=0; //Damit die Kugel nach dem erscheinen erst beschleunigt
  gravitation=1.5; //Unbedingt testen
  
  void bounce() {     
    if (y>=360-(diameter/2)
      speed=speed*(-1*wirkungsgrad); //wenn der Ball am Boden ist, wird die Geschwindigkeit umgekehrt, reduziert durch den Wirkungsgrad<1
    
    speed=speed+gravitation;
    y=y+speed;

    }
  }
}
