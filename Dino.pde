class Dino {
  //gloval varibles for Dino
  //Dino
  float dinoY;
  float dinoS;
  float dinoA;


  //constructor
  Dino (float A_, float Y_, float S_) {
    dinoA= A_;
    dinoY= Y_;
    dinoS= S_;
  }

  //updating and drawing the dino on screen
  void update(float graivty) {
    //draw the dino
    fill(0);
    ellipse(50, dinoY, 60, 60);

    // move the dino
    dinoA = dinoA + gravity; // changes acceleration based on gravity
    // status updates for dinosaur position

    textSize(12);
    fill(0);
    text("dinoY is " + dinoY, 150, 25);
    text("dinoS is " + dinoS, 150, 50);
    text("dinoA is " + dinoA, 150, 75);
    // text("distance is " + distance, 150, 100); // will make this work later

    dinoS = dinoS + dinoA; // change speed based on acceleration 
    dinoY = dinoY + dinoS; // change location based on speed


    // stop the dino if it hits the ground
    if (dinoY > 170) { // bottome of the screen (200) minus the radius 
      dinoA = 0;
      dinoS = 0;
      dinoY = 170;
    }
  }

  // getY
  // Purpose: an accessor method; lets us find out where the dino is (vertically)
  float getY() {
    return dinoY;
  }

  // setA
  //
  // Purpose: a mutator method; lets the acceleration for the dinosaur be set
  //          from outside the class
  void setA(float newA_) {
    dinoA = newA_;
  }
}