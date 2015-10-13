//Name: Oscar Peters//

// global variables (can be use everywhere below)
float x1; // tracks horizontal position of first cactus 
float x2; //  tracks horizontal position of second cactus
float a1; // tracks acceleration of the first cactus 
float s1; // tracks the speed of the first cactus
float a2;// tracks acceleration of the second cactus
float s2; // tracks the speed of the second cactus

float dinoY; // tracks position of dino
float dinoS; // tracks speed of dino
float dinoA; // tracks acceleration of dino
float gravity = 0.005; // gravity

// this function runs once only
void setup() {
  // draw the canvas 
  size(800, 200);

  // set initial position of the cactus
  x1 = 900; // position it off-screen on the right
  x2 = 1000;

  // initial horizontal acceleration for cactus
  a1 = -0.1;
  a2 = -0.1;

  // initial horizontal speed for cactus
  s1 = -1;
  s2 = -1;

  // set dino initial vertical position
  dinoY = 170;

  // set dino initial speed
  dinoS = 0;

  // set dino initial acceleration
  dinoA = 0;
}

// this function runs repeatedly 
void draw() {
  // background clears each time the program loops
  background(255);

  // draw a circle at bottom right corner of the screen
  //       x    y   w   h
  ellipse(x1, 175, 35, 35);
  fill(0);
  ellipse(x2, 175, 35, 35);
  fill(255, 0, 0);

  // change the speed
  s1 = s1 + a1;
  s2 = s2 + a2;

  // create the appearence of moving by changing the x position
  x1= x1 + s1;
  x2= x2 + s2;

  // put the cactus back on right edge if it goes off left edge
  if (x1 < -25) {
    x1 = 900;
    s1 = -1;
  }
  if (x2 < -25) {
    x2 = 1000;
    s2 = -1;
  }
  
  // status updates
  text("dinoY is " + dinoY, 150, 25);
  text("dinoS is " + dinoS, 150, 50);
  text("dinoA is " + dinoA, 150, 75);
  
  // move the dino
  dinoA = dinoA + gravity; // changes acceleration based on gravity
  dinoS = dinoS + dinoA; // change speed based on acceleration 
  dinoY = dinoY + dinoS; // change location based on speed
  
  // stop the dino if it hits the ground
  if (dinoY > 170) { // bottome of the screen (200) minus the radius 
  dinoA = 0;
  dinoS = 0;
  dinoY = 170;
  }

  // draw the dino 
  ellipse(50, dinoY, 35, 35);
  fill(0);
}

// respond to keypress
void keyPressed(){
  dinoA = -1;
  
  
}