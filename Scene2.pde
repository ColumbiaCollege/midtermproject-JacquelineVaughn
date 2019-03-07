//SCENE 2
PImage kb;
void drawScene2(){
  background(artScene2_3);
  KB();
}

void KB() {
  //tv screen outline
  fill(0);
  textSize(30);
  textAlign(CORNER);
  textFont(myFont);
  rect(10,5,730,120);
  fill(#6600CC);
  text("It was just another day at home watching a movie,",20,35);
  text("when suddenly the tv changed channels...",20,75);
  text("I began to feel hypnotized.",20,115);
  stroke(0);
  strokeWeight(2);
  line(220,317,429,317);
  line(220,319,220,499);
  line(430,317,430,499);
  line(221,500,430,500);
  imageMode(CORNER);
  //image(myMovie,222,319,207,180);
  image(kb,222,319,207,180);
  //VHS style line stolen from processing gravity example
  line(222,a,428,a);
  a=a-.25;
  if (a<319) {
    a=499;
  }
}
