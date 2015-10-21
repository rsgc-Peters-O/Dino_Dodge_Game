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

    // set initial position of the cactus
    x1 = 900; // position it off-screen on the right
    x2 = 1800;

    // initial horizontal acceleration for cactus
    a1 = -0.1;
    a2 = -0.1;

    // initial horizontal speed for cactus
    s1 = -1;
    s2 = -1;
  }
}