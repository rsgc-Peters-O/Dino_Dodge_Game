//Name: Oscar Peters//

// global variables (can be use everywhere below)

Cactus c1; 
Cactus c2;

//float x1; // tracks horizontal position of first cactus 
//float x2; //  tracks horizontal position of second cactus
//float a1; // tracks acceleration of the first cactus 
//float s1; // tracks the speed of the first cactus
//float a2;// tracks acceleration of the second cactus
//float s2; // tracks the speed of the second cactus
float x1; // tracks horizontal position of first cactus 
float x2;
float a2;
float s2;
float y1; //tracks vertical position of the first cactus 
float s1; //  tracks horizontal position of second cactus
float a1; // tracks acceleration of the first cactus 
float dinoY; // tracks position of dino
float dinoS; // tracks speed of dino
float dinoA; // tracks acceleration of dino
float gravity; // gravity
float line1;
float line2;
float a5;
float a6;
float b1;
boolean isDead;
int mouseClicked;
int score = 0;
int highscore = 0; // set score and highscore

Dino d1;

// this function runs once only
void setup() {

  // draw the canvas 
  size(800, 200);

  c1 = new Cactus(900, -0.1, -1, 0);
  c2=  new Cactus(900, -0.2, -1, 0);

  d1 = new Dino(0, 170, 0);


  // set gravity 
  gravity = 0.07;
}

// this function runs repeatedly 
void draw() {
  // background clears each time the program loops

  background(255);

  c1.update(gravity);
  c2.update(gravity);
  
  d1.update(gravity);





    //highscore = max(score, highscore);

  //b1=170-dinoY;
  //a6=x2-50;
  //a5=x1-50;

 // c1=sq(a5)+sq(b1);
 // c2=sq(a6)+sq(b1);
 //line1=sqrt(c1);
 // line2=sqrt(c2);

  // status updates
  //text("dinoY is " + dinoY, 150, 25);
  //text("dinoS is " + dinoS, 150, 50);
  //text("dinoA is " + dinoA, 150, 75);
  //text("line1 is " + line1, 150, 100);
  //text("line2 is " + line2, 150, 120);
  //text("Score " + score, 750, 10);



  //// draw the dino 
  //ellipse(50, dinoY, 50, 50);
  //fill(0);
  //if (line1<45) {
  //  a1=0;
  //  a2=0;
  //  s1=0;
  //  s2=0;
  //}
  //if (line2<45) {
  //  a1=0;
  //  a2=0;
  //  s1=0;
  //  s2=0;
  //}
}
//void mouseClicked() {
//  mouseClicked++;
//  if (mouseClicked==1) {
//    score = 0;
//    x1 = 900; // position it off-screen on the right
//    x2 = 1800;

//    // initial horizontal acceleration for cactus
//    a1 = -0.1;
//    a2 = -0.1;

//    // initial horizontal speed for cactus
//    s1 = -1;
//    s2 = -1;


//    dinoY = 170;


//    dinoS = 0;


//    dinoA = 0;


//    gravity = 0.07;
//  } else if (mouseClicked>1) {
//    //x1 = 900; // position it off-screen on the right
//    //x2 = 1800;

//    //// initial horizontal acceleration for cactus
//    //a1 = -0.1;
//    //a2 = -0.1;

//    //// initial horizontal speed for cactus
//    //s1 = -1;
//    //s2 = -1;

//    //// set dino initial vertical position
//    //dinoY = 170;

//    //// set dino initial speed
//    //dinoS = 0;

//    //// set dino initial acceleration
//    //dinoA = 0;

//    //// set gravity 
//    //gravity = 0.07;
//  }
//}

//// respond to keypress
void keyPressed() {

 //if (key == ' ') {
 //  if (dinoY==170) {
 //    dinoA = -1;
 //  }
 //}
 
 if (d1.getY() == 170) {
 d1.setA(-1);
 }
}