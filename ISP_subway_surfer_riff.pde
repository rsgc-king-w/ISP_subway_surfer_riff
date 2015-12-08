// Will King
// Game Project


//Global Variables for Person (used everywhere below)
float x1; //Tracks horizontal position of Person

//Global Variables for Obstacle 
float ty1; // tracks vertical position of rock
float s1; // speed for the rocks
float tx1;  //horiszontal position of trees
float a = 5; // acceleration for rocks
float b = 10; // second variable for speed

float ty2; // tracks vertical position of rocks
float s2; // speed for the rocks
float tx2;  //horiszontal position of trees

float ty3; // left rock
float s3; // speed for rocks
float tx3; //horiszontal position of trees


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
  ty1= -100; //start position of rock
  ty2= -100; //start position of rock 2

  s1= 10;
  s2= 12;
  s3= 15;

  time= 0;
  score= 0;


  Run = loadImage("loveland.jpg");
  tree = loadImage("evergreen1.jpg");
  dude= loadImage("skier.jpg");

  noLoop();
} //End of void setup



void draw() {
  //background(255);
  image(Run, 0, 0, 720, 960);
  textSize(20);

tx1= 280;
tx2= 105;
tx3= 455;


  // Acceleration/ make game harder
  a= a+.001;
  b= b+.001;


  // Make colour of the person
  fill(10, 50, 10);

  //Make Person 
  image(dude, x1, 650, 50, 50);


  //make trees
  image(tree, tx1, ty1, 80, 80);
  // Tells tree to randomize
  ty1= ty1+s1; // Tells the tree to move across the screen
  if (ty1 > 850) {
    ty1= random(-200, -100);
    s1= random(a, b);
  }

  image(tree, tx2, ty2, 80, 80);
  // Tells tree to randomize
  ty2= ty2+s2; // Tells rock to move
  if (ty2> 850) {
    ty2= random(-200, -100);
    s2= random(a, b);
  }

  image(tree, tx3, ty3, 80, 80);
  // Tells tree to randomize
  ty3= ty3 +s3;
  if (ty3> 850) {
    ty3= random(-200, -100);
    s3= random(a, b);
  }

  time= time + 1;
  score= time/60;

  fill(255);
  text("Score= " + score, 50, 50);
} // End of Draw (action stuff)


void keyPressed () {
  //moves the character to the right
  if (key== 'a' && x1 > 125) {
    x1= x1-175;
  }
  //moves the character to the left
  if (key == 'd' && x1 < 475) {
    x1= x1+175;
  }
  // Press the space bar to start the game 
  if (key == ' ') {
    loop(); // tells the game to start
  }
}