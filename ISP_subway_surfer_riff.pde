// Will King
// Game Project


//Global Variables for Person (used everywhere below)
float x1; //Tracks horizontal position of Person

//Global Variables for Obstacle 
float y1; // tracks vertical position of trees
float s1; // speed for the trees
float a1; // acceleration for trees

float y2; // tracks vertical position of rocks
float s2; // speed for the rocks
float a2; // acceleration for rocks 

float y3; // left rock
float s3; // speed for rocks
float a3; // acceleration for the rocks


//this function only runs once
void setup() {

  //Make Canvas
  size(600, 700);

  x1= 300; // start position of person
  y1= -100; //start position of rock
  y2= -100; //start position of rock 2

  s1= 10+a1;
  s2= 12+a2;
  s3= 15+a3;
 

  a1= 1.5;
  a2= 2;
  
} //End of void setup



void draw() {
  background(255);

  // Make colour of the person
  fill(10, 50, 10);

  //Make Person 
  ellipse(x1, 650, 30, 30);



  //make trees
  rect(280, y1, 40, 40);

  y1= y1+s1; // Tells the tree to move across the screen
  if (y1 > 850) {
    y1= random(-200,-100);
  }

  rect (105, y2, 40, 40);

  y2= y2+s2; // Tells rock to move
  if (y2> 850) {
    y2= random(-200,-100);
  }

  rect (455, y3, 40, 40);
  
  y3= y3 +s3;
  if (y3> 850) {
    y3= random(-200,-100);
  }
} // End of Draw (action stuff)


void keyPressed () {
  if (key== 'a' && x1 > 125) {
    x1= x1-175;
  }
  if (key == 'd' && x1 < 475) {
    x1= x1+175;
  }
}