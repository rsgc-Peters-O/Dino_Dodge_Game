class Cactus {
  //golobal variables for the cactus
  float x1; // tracks horizontal position of first cactus 
  float y1; //tracks vertical position of the first cactus 
  float a1; // tracks acceleration of the first cactus 
  float s1;  //tracks the speed of the first cactus
  float r1;  //tracks the radius of the cactus



  //constructor (like setup - run s once)
  Cactus (float x_, float y_, float a_, float s_) {
    x1= x_;
    y1= 175;
    a1= a_;
    s1= s_;
    r1 = 25;
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
  
    ellipse(x1, y1, r1*2, r1*2);
  
  }
  //getX
  //Purpose: to return the x position of the cactus
  float getX() {

    return x1;
  }


// getX
// Purpose: an accessor method; lets us find out where the cactus is (horizontally)
//float getX() {
//  return x1;
//}

// getY
//
// Purpose: an accessor method; lets us find out where the cactus is (vertically)
float getY() {
  return y1;
}

// getR
// Purpose: an accessor method; lets us find out the cactus radius
float getR() {
  return r1;
}

}