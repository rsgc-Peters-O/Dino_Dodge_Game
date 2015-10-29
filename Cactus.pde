class Cactus {
  //golobal variables for the cactus
  float x1; // tracks horizontal position of first cactus 
  float y1; //tracks vertical position of the first cactus 
  float s1; //  tracks horizontal position of second cactus
  float a1; // tracks acceleration of the first cactus 



  //constructor (like setup - run s once)
  Cactus (float x_, float y_, float a_, float s_) {
    x1= x_;
    y1= y_;
    a1= a_;
    s1= s_;
  }

  //update draws things related to cactus
  void update (float gravity) {
    //make the cactus move
    // change the speed
    s1 = s1 + a1;

    // create the appearence of moving by changing the x position
    x1= x1 + s1;

    // put the cactus back on right edge if it goes off left edge
    if (x1 < -25) {
      x1 = 900;
      s1 = -1;
//      score++;
    }
    
    // draw the cactus
    ellipse(x1, 170, 50, 50);
    
  }

  //getX
  //Purpose: to return the x position of the cactus
  float getX() {

    return x1;
  }
}