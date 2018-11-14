class Ball {
  float x,y; // Position im Raum
  float gravitation=1.5; // TODO: Muss getestet werden!
  float wirkungsgrad=0.9; // Damit die Kugel mit der Zeit weniger hoch hüpft
  float speed=0; // Geschwindigkeit der Kugel
  int diameter;

  
  // TODO: Konstruktor erstellen
  
  void bounce() { 
    
    if (y>=360-(diameter/2)){
     
      speed=speed*(-1*wirkungsgrad); // Wenn der Ball am Boden ist, wird die Geschwindigkeit umgekehrt, reduziert durch den Wirkungsgrad<1
      speed=speed+gravitation;
      y=y+speed;

    }
  }
}
