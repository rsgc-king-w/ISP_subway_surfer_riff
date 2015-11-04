// Will King
// Game Project


//Global Variables (used everywhere below)
int x; //Tracks horizontal position of Person
int y; // tracks vertical position of boulders/trees


//this function only runs once
void setup() {

  //Make Canvas
  size(600, 400);

  x=300; // start position of person
} //End of void setup



void draw() {
  background(255);

  // Make colour of the person
  fill(10, 50, 10);

  //Make Person 
  ellipse(x, 350, 30, 30);
}


void keyPressed () {
  if (key== 'a' && x > 125) {
    x= x-175;
  }
  if (key == 'd' && x < 475) {
    x= x+175;
  }
}