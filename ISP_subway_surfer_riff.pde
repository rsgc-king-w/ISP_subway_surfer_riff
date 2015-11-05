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



//this function only runs once
void setup() {

  //Make Canvas
  size(600, 700);

  x1= 300; // start position of person
  y1= -100; //start position of rock
  
  s1= -10;
  s2= -12;
  
} //End of void setup



void draw() {
  background(255);

  // Make colour of the person
  fill(10, 50, 10);
 
  //Make Person 
  ellipse(x1, 650, 30, 30);
  


  //make trees
  rect(280, y1, 40, 40);
  
  y1= y1+10; // Tells the tree to move across the screen
  if (y1 > 850) {
    y1= -200;
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