// Will King
// Game Project


//Global Variables for Person (used everywhere below)
float x1; //Tracks horizontal position of Person

//Global Variables for Obstacle 
float y1; // tracks vertical position of rock
float s1; // speed for the rocks
float a = 5; // acceleration for rocks
float b = 10; // second variable for speed

float y2; // tracks vertical position of rocks
float s2; // speed for the rocks

float y3; // left rock
float s3; // speed for rocks


int time; // variable of seconds
int score;// score

PImage dude;
PImage tree;
PImage Run;


//this function only runs once
void setup() {
//rock= loadImage
  
  //Make Canvas
  size(600, 700);


  x1= 300; // start position of person
  y1= -100; //start position of rock
  y2= -100; //start position of rock 2

  s1= 10;
  s2= 12;
  s3= 15;

  time= 0;
  score= 0;
     
 
 Run = loadImage("loveland.jpg");
 tree = loadImage("evergreen1.jpg");
 //dude= loadImage("
} //End of void setup



void draw() {
  //background(255);
  image(Run ,0, 0, 720, 960);
  textSize(20);


// Acceleration/ make game harder
  a= a+.001;
  b= b+.001;


  // Make colour of the person
  fill(10, 50, 10);

  //Make Person 
  ellipse(x1, 650, 30, 30);



  //make trees
  
  image(tree, 280, y1, 80, 80);
// Tells tree to randomize
  y1= y1+s1; // Tells the tree to move across the screen
  if (y1 > 850) {
    y1= random(-200, -100);
    s1= random(a, b);
  }

  image(tree ,105, y2, 80, 80);
// Tells tree to randomize
  y2= y2+s2; // Tells rock to move
  if (y2> 850) {
    y2= random(-200, -100);
    s2= random(a, b);
  }

   image(tree ,455, y3, 80, 80);
// Tells tree to randomize
  y3= y3 +s3;
  if (y3> 850) {
    y3= random(-200, -100);
    s3= random(a, b);
  }

  time= time + 1;
  score= time/60;

fill(255);
  text("Score= " + score, 50, 50);
} // End of Draw (action stuff)


void keyPressed () {
  if (key== 'a' && x1 > 125) {
    x1= x1-175;
  }
  if (key == 'd' && x1 < 475) {
    x1= x1+175;
  }
}