//SPACE NOIR: KATACLYSM

//PImage variables (they did in fact have to be here).
PImage artscalpalhelp;
PImage artvomit;
PImage arttalk;
PImage artalone;
PImage artcrack;
PImage artHenry;
PImage artlonelyspacee;
PImage artcapture;
PImage artbang;
PImage artmaybe;
PImage artBork;
PImage arthallway;
PImage artwin;
PImage help;
PImage bdead;
PImage kdead;
PImage vom;
PImage artScene10;
PImage artScene11;

//Image initializers
void loadImages(){
    //image initializes
  kb=loadImage("killbill.png");
  artScene2_3=loadImage("Art 1.png");
  tv=loadImage("static.png");
  screen=loadImage("screen.png");
  alien=loadImage("alien.png");
  eye=loadImage("eye.png");
  qmark=loadImage("qmark.png");
  artScene1=loadImage("Art 5.png");
  shadow=loadImage("shadow.png");
  artScene4=loadImage("Art 8.png");
  artScene5=loadImage("Art 7.png");
  artScene7=loadImage("artScene6.png");
  artScene8_9=loadImage("artScene7.png");
  artScene10=loadImage("Art 12.png");
  artScene11=loadImage("Art 13.png");
  artscalpalhelp=loadImage("Art 8million.png");
  artvomit=loadImage("Art 12.png");
  arttalk=loadImage("Art 47.png");
  artalone=loadImage("Art 87.png");
  artcrack=loadImage("Art crack.png");
  artHenry=loadImage("Art Henry.png");
  artlonelyspacee=loadImage("Art oof.png");
  artcapture=loadImage("cap5.png");
  artbang=loadImage("shoot.png");
  artmaybe=loadImage("maybe.png");
  artBork=loadImage("bork.png");
  arthallway=loadImage("hallway.png");
  artwin=loadImage("Art win.png");
  help=loadImage("shake.png");
  bdead=loadImage("Art deadd.png");
  kdead=loadImage("Art bang.png");
  vom=loadImage("vom.png");
}



//Ethan's Magic Sound Setup!
class AudioPlayer
{
  private AudioInputStream stream; // Holds stream data for the system
  private Clip audio; // Access to playback, loop, and scrubbing controls
  
  /**
   * Default constructor.
   */
  public AudioPlayer(File input)
  {
    // Make sure input file exists before attempting to load it.
    if(input == null || !input.exists()) throw new IllegalArgumentException("Input file must not be null, and must exist.");
    
    try{
      // Load stream data
      stream = AudioSystem.getAudioInputStream(input);
      // Generate clip handler from stream metadata
      audio = (Clip)AudioSystem.getLine(new DataLine.Info(Clip.class, stream.getFormat()));
      // Open clip stream
      audio.open(stream);
    }catch(UnsupportedAudioFileException e){
      throw new IllegalArgumentException("Source file is of an incompatible format.");
    }catch(LineUnavailableException e){
      throw new IllegalStateException("Audio engine could not obtain stream from given file.");
    } catch(IOException e){
      throw new IllegalArgumentException("Source file could not be read.");
    }
  }
  
  public void stop(){
    audio.stop();
  }
  
  public void play(){
    audio.start();
  }
  
  public void loop(int times)
  {
    // Start playback from the beginning of the clip, regardless of where it is right now
    if(isPlaying()) audio.stop();
    audio.start();
    // Loop the entire clip n times (actual nunber is n-1 due to the first playback run not counting as a loop)
    audio.setLoopPoints(0, -1);
    audio.loop(times - 1);
  }
  
  public boolean isPlaying(){
    return audio.isRunning();
  }
  
  public void addListener(LineListener listener){
    if(listener != null) audio.addLineListener(listener);
  }
  
  @Override
  public void finalize(){
  }
}




import javax.sound.sampled.*;
//More variables.
int Song = 0;
int Scene = 0;

AudioPlayer pl;
AudioPlayer pl2;

void setup(){  
  loadImages();
  size(1280, 768);
  //Scene setups
  setupScene3();
  //More audio setup from Ethan
  File src = new File((dataPath("Scenes1-5.wav")));
  File src2 = new File((dataPath("song2.wav")));
  pl= new AudioPlayer(src);
  pl2 = new AudioPlayer(src2);
  //initializes the choose your own part of the adventure
  setupChoicesScene8();
}
void draw(){
  //How scenes 1-9 change
  switch(Scene){
    case 0:
      pl.loop(0);
      drawScene0();
      break;
    case 1:
      drawScene1();
      break;
    case 2:
      drawScene2();
      break;
    case 3:
      drawScene3();
      break;
    case 4:
      drawScene4();
      break;
    case 5:
      drawScene5();
      break;
    case 6:
      pl.stop();
      drawScene6();
      break;
    case 7:
      pl2.loop(0);
      drawScene7();
      break;
    case 8:
      drawScene8();
      break;
    case 9:
      drawScene9();
      break;
  }
  //Scene ++ and -- buttons
  fill(0);
  stroke(255);
  triangle(1220,height/2+10,1220,height/2-10,1240,height/2);
  triangle(40,height/2,60,height/2-10,60,height/2+10);
  
  ////Enought spaghetti to solve world hunger
  //...But all my other ideas failed so...
  //Nobody toucha my spaghett.
  
  if(state==1){
    stroke(255);
    background(artScene8_9);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
    }
      
  if(state==2){
    background(artScene10);
    stroke(255);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    rect(120,355,1040,45);
    drawChoice2();
  }
   if(state==3){
     background(artScene8_9);
     stroke(255);
     fill(0);
     rect(10,115,1260,47);
     rect(10,250,1260,45);
     drawChoice2();
   }
  if(state==4){
    background(artscalpalhelp);
    stroke(255);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    rect(120,355,1040,45);
    drawChoice2();
  }
  if(state==5){
    background(artScene10);
    stroke(255);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
  }
  if(state==6){
    background(artScene8_9);
    stroke(255);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
  }
  if (state==8){
    stroke(255);
    background(vom);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
  }
  if(state==9){
    background(artscalpalhelp);
    stroke(255);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    rect(120,355,1040,45);
    drawChoice2();
  }
  if(state==11){
    stroke(255);
    background(artScene11);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
  }
  if(state==13){
    stroke(255);
    background(help);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
  }
  if(state==14){
    stroke(255);
    background(artalone);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
  }
  if(state==19){
    stroke(255);
    background(arttalk);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
  }
  if(state==20){
    stroke(255);
    background(arttalk);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
  }
  if(state==21){
    stroke(255);
    background(arttalk);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
  }
  if(state==22){
    stroke(255);
    background(arttalk);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
  }
  if(state==23){
    stroke(255);
    background(arttalk);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
  }
  if(state==24){
    stroke(255);
    fill(0);  
    background(artBork); 
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==25){
    stroke(255);
    fill(0);  
    background(artBork); 
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==26){
    stroke(255);
    fill(0);  
    background(artBork); 
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==27){
    stroke(255);
    fill(0);  
    background(artBork); 
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==28){
    stroke(255);
    fill(0);  
    background(artBork); 
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==29){
    stroke(255);
    fill(0);  
    background(artBork); 
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    rect(120,355,1040,45);
    drawChoice2(); 
  }
  if(state==30){
    stroke(255);
    fill(0);
    background(bdead);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==31){
    stroke(255);
    fill(0);  
    background(artmaybe); 
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==32){
    stroke(255);
    fill(0);
    background(arthallway);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==33){
    stroke(255);
    fill(0);  
    background(artmaybe); 
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==34){
    stroke(255);
    fill(0);  
    background(arthallway); 
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
  }
  if(state==35){
    stroke(255);
    fill(0);
    background(kdead);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    rect(120,355,1040,45);
    drawChoice2(); 
  }
  if(state==36){
    stroke(255);
    background(artalone);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
    }
  if(state==37){
    stroke(255);
    background(artcapture);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==38){
    stroke(255);
    background(artcrack);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==39){
    stroke(255);
    background(artbang);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    rect(120,355,1040,45);
    drawChoice2(); 
  }
  if(state==40){
    stroke(255);
    background(kdead);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    rect(120,355,1040,45);
    drawChoice2(); 
  }
  if(state==41){
    stroke(255);
    background(artHenry);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2();
  }
  if(state==43){
    background(artbang);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    rect(120,355,1040,45);
    drawChoice2(); 
  }
  if(state==44){
    stroke(255);
    background(0);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==45){
    stroke(255);
    fill(0);
    background(artlonelyspacee);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==48){
    background(artwin);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==51){
    fill(0);
    stroke(255);
    background(artwin);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    rect(120,355,1040,45);
    drawChoice2();
  }
  if(state==57){
    background(0);
    fill(0);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    drawChoice2(); 
  }
  if(state==72){
    fill(0);
    stroke(255);
    background(artwin);
    rect(10,115,1260,47);
    rect(10,250,1260,45);
    rect(120,355,1040,45);
    drawChoice2();
  }
}
