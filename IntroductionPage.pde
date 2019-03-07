//SCENE ZERO
void drawScene0(){
  background(0);

  //Grid background stolen from processing example (it's pretty simple)
  int gridScale = 8;
  int cols, rows;
  // Initialize columns and rows
  cols = width/gridScale;
  rows = height/gridScale;
  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {
      // Scaling up to draw a rectangle at (x,y)
      int x = i*gridScale;
      int y = j*gridScale;
      fill(0);
      stroke(#6600CC);
      rect(x, y, gridScale, gridScale);
    }
  }
  //Title and text settings
  textFont(myFont);
  textSize(190);
  textAlign(CENTER);
  text("SPACE NOIR:",width/2,300);
  textSize(150);
  text("KATACLYSM",width/2,450);
  fill(255);
  textSize(60);
  text("Click the button to play.",width/2,650);
}
