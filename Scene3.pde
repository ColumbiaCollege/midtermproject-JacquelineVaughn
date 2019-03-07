//SCENE 3
//Variables
int channel = 0;
//image declarations
PImage artScene2_3;
PImage tv;
PImage screen;
PImage alien;
PImage eye;
PImage qmark;
PFont myFont;
//question method variables (stolen from Processing bounce example)
int rad = 60;        // Width of the shape
float xpos, ypos;    // Starting position of shape    

float xspeed = 2.8;  // Speed of the shape
float yspeed = 2.2;  // Speed of the shape

int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom
//floats
float a;
float x=325.5;//x loc of alien
float y=400;//y loc of alien
float speed=0;//speed of alien
float gravity=0.1;
int savedTime;
int totalTime = 200;

void setupScene3() {
  //background(artScene3);
  //tv line settings
  stroke(255);
  a=height/2;
  //font stuff from processing
  myFont=createFont("AppleMyungjo.ttf",30);
  textFont(myFont);
}

void drawScene3() {
  background(artScene2_3);
  textAlign(CORNER);
  fill(0);
  textSize(30);
  stroke(0);
  
  switch(channel){
    case 0:
      stroke(255);
      textFont(myFont);
      rect(140,45,470,40);
      fill(#6600CC);
      text("Fight back! Change the channel.",150,75);
      snow();
      break;
    case 1:
      stroke(255);
      textFont(myFont);
      rect(140,45,470,40);
      fill(#6600CC);
      text("Fight back! Change the channel.",150,75);
      alien();
      break;
    case 2:
      stroke(255);
      textFont(myFont);
      rect(140,45,470,40);
      fill(#6600CC);
      text("Fight back! Change the channel.",150,75);
      illuminati();
      break;
    case 3:
      stroke(255);
      textFont(myFont);
      rect(140,45,470,40);
      fill(#6600CC);
      text("Fight back! Change the channel.",150,75);
      question();
      break;
  }
}

void display() {
  //alien picture
  imageMode(CENTER);
  image(alien, x, y, 150, 150);
}

void move() {
  //alien movement
  speed=.2;
  y=y+speed;
  if (y>428) {
    y=390;
  }
}

//alien screen animation background
void alien() {
  imageMode(CORNER);
  image(screen, 222, 319, 207, 180);
  display();
  move();
  //gravity processing example mostly
  stroke(#ffffff);
  line(222, a, 428, a);
  a=a-.25;
  if (a<319) {
    a=499;
  }
}

void display1(){
  imageMode(CORNER);
  image(screen, 222, 319, 207, 180);
  stroke(#ffffff);
  //gravity processing example mostly
  line(222, a, 428, a);
  a=a-.25;
  if (a<319) {
    a=499;
  }
}
void display2(){
  imageMode(CENTER);
  image(eye, x, y, 150, 150);
}
void move2(){
  //stole from flashing processing example
  int passedTime = millis() - savedTime;
  // Has five seconds passed?
  if (passedTime > totalTime) {
    display2(); // Color a new background
    savedTime = millis(); // Save the current time to restart the timer!
  }
}
void illuminati(){
  display1();
  move2();
}

void display4(){
  imageMode(CENTER);
  image(qmark,xpos,ypos,rad,rad);
  move3();
}
void move3(){
  //stolen from bounce processing example
  // Set the starting position of the shape
  xpos = 325.5;
  ypos = 400;
  // Update the position of the shape
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xpos < 429-rad || xpos < rad) {
    xdirection *= -1;
    }
  if (ypos < 499-rad || ypos < rad) {
    ydirection *= -1;
  }
  }
void question(){
  display1();
  display4();
}
void snow() {
  //tv screen outline
  stroke(0);
  strokeWeight(2);
  line(220,317,429,317);
  line(220,319,220,499);
  line(430,317,430,499);
  line(221,500,430,500);
  imageMode(CORNER);
  image(tv,222,319,207,180);
  //VHS style line stolen from processing gravity example
  line(222,a,428,a);
  a=a-.25;
  if (a<319) {
    a=499;
  }
}
