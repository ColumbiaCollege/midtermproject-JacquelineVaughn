//SCENE 1
PImage artScene1;
PImage shadow;
void drawScene1(){
  background(artScene1);
  displayScene1();
}
void displayScene1(){
  //text settings
  fill(0);
  textSize(30);
  textAlign(CORNER);
  textFont(myFont);
  //shadow figures repeated to be darker
  image(shadow,100,100,175,700);
  image(shadow,1025,480,62.5,250);
  image(shadow,100,100,175,700);
  image(shadow,1025,480,62.5,250);
  image(shadow,100,100,175,700);
  image(shadow,1025,480,62.5,250);
  rect(10,5,630,140);
  //text
  fill(#6600CC);
  text("My life was about as ordinary as it gets.",20,35);
  text("I was an ordinary girl in an ordinary world.",20,85);
  text("That was... until March 22.",20,135);
}
