//Name: Oscar Peters//

//Golbal variables (can be used everywhere below)
int x;  //tracks horizontal position of first cactus//

void setup() {

  //Draw canvus//
  size(800, 200); 

  //Set the initial position of the cactus//
  x = 900; //position it off-screen on the right//
}
//This function runs repeatedly//
void draw() {

  //Background clears each time the program loops//
  background(255);

  //Draw a circle at the bottom right corner//

  ellipse(x, 175, 50, 50);

  //create the apperance of moving by changing the x position//
  x= x -5;

//put the cactus back on the right edge if it goes off the left side//
if (x < -25) {
  x= 900; //place off screnn on right//
}

}