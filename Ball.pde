class Ball {
  float x,y; // Position im Raum
  float gravitation=1.3; // Anziehungskraft (für Beschleunigung) in pixeln pro quadratframe                                              
  float wirkungsgrad=0.9; // Damit die Kugel mit der Zeit weniger hoch hüpft
  float diameter;
  float speedX=0;
  float speedY=0;
  
 //Konstruktor der Klasse Ball
  Ball(float x, float y,  float dia,float speedX, float speedY){
    this.x=x;
    this.y=y;
    this.diameter=dia;
    this.speedX=speedX;
    this.speedY=speedY;
  }

  //Sorgt dafüt, dass Ball angezeigt wird
  void display() {
    stroke(0);
    strokeWeight(1);
    fill(255,100,100);
    ellipse(x,y,diameter,diameter);
  }  
  
  //Sorgt für die Bewegung des Balls in Y-Richtung
  void bounce() {     
    if (y>=screenY-(diameter/2)-1 || y<=0+(diameter/2)+1){
      speedY=speedY*(-1*wirkungsgrad); // Wenn der Ball am Boden ist, wird die Geschwindigkeit umgekehrt, reduziert durch den Wirkungsgrad<1
      speedX=speedX*wirkungsgrad;
    }
    
    speedY=speedY+gravitation;
    y=y+speedY;   
    
    /* Wenn der Ball teilweise im "Boden" steckt, wird er auf den Boden gesetzt
     * Ohne diese Funktion würde er im Boden versinken */
    if (y>=screenY-(diameter/2)-1){
      y=screenY-(diameter/2)-1;
    }
    if (y<=0+(diameter/2)+1){
      y=0+(diameter/2)+1;
    }
    
// Ender Y --------------------------------

    if (x>=screenX-(diameter/2)-1 || x<=0+(diameter/2)+1){
      speedX=speedX*(-1*wirkungsgrad); // Wenn der Ball am Boden ist, wird die Geschwindigkeit umgekehrt, reduziert durch den Wirkungsgrad<1
      speedY=speedY*wirkungsgrad;
    }
    
    x=x+speedX;   
    
    /* Wenn der Ball teilweise im "Boden" steckt, wird er auf den Boden gesetzt
     * Ohne diese Funktion würde er im Boden versinken */
    if (x>=screenX-(diameter/2)-1){
      x=screenX-(diameter/2)-1;
    }
    if (x<=0+(diameter/2)+1){
      x=0+(diameter/2)+1;
    }
    
  }
  
}
