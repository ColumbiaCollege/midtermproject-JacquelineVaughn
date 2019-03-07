//Clicking, dialogue, and option settings
//Initially stolen from a processing example but pretty much everything but the variable names is different now

float initialYPos = 280;
float interLineGap = 70;

//Declaring a class
class Pair {
  String txt;
  int id;
  Pair(int iid, String itxt){
    id = iid;
    txt = itxt;
  }
}
//Declaring a class
class State {
  Pair here;
  ArrayList<Pair> links;
  State(int iid, String itxt){
    here = new Pair(iid, itxt);
    links = new ArrayList();
  }
  void add_link(int to_id, String option_txt){
    links.add( new Pair(to_id, option_txt) );
  }
//No longer Seth
//Basically what the text looks like and where it comes up
  void drawChoice(){
    textAlign(CENTER);
    text(here.txt,width/2,150);
    fill(#6600CC);
    textAlign(CENTER);
    //intialYPos and inerLineGap thing made by Ethan
    for(int i=0; i< links.size(); i++){
      text(links.get(i).txt,width/2,initialYPos + (i * (textAscent() + textDescent() + interLineGap)));
      
    }
  }
  
  //Button positioning
  void mouse(){
     if(mouseX>width/2-300 && mouseX<width/2+200 && mouseY>260 && mouseY<290){ 
        state = states[state].links.get(0).id;
      }
    if(mouseX>width/2-300 && mouseX<width/2+200 && mouseY>380 && mouseY<410){ 
      state = states[state].links.get(1).id; 
      return;
    }
  }
}

//The actual choices and dialogue
State[] states = new State[100];
int state = 0;
 
void setupChoicesScene8(){
  states[0] = new State(  0, "What in the... I need to get loose.");
  states[0].add_link(  1, "Try to chew through the leather.");
  states[0].add_link(  2, "Jerk your body around hoping when you fall, you land near something sharp.");
 
  states[1] = new State(  1, "You have damaged your teeth.");
  states[1].add_link(  3, "Swear at the restraints because you have yet to cope with your anger issues.");
  
  states[2] = new State(  2, "You fell near a couple objects.");
  states[2].add_link(  5, "Grab the scalpal.");
  states[2].add_link(  4, "Sit tight.");
  
  states[3] = new State(  3, "Very effective! The restraints have collapsed! Just kidding. Goosfraba.");
  states[3].add_link(  57, "Weep uncontrollably.");
  
  states[57] = new State(  57, "You were extremely low on liquids. You have died of dehydration.");
  states[57].add_link(  0, "Play again.");
  
  states[4] = new State(  4, "After 30 minutes, a large creature comes in the room.");
  states[4].add_link(  8, "Vomit and cry at the same time.");
  states[4].add_link(  9, "Ask it to help you out of the restraints.");
  
  states[5] = new State(  5, "You have accidentally stabbed your hand.");
  states[5].add_link(  11, "Leave the knife where it is and try to reposition yourself.");
  
  states[8] = new State(  8, "You were extremely low on liquid. You have died of dehydration.");
  states[8].add_link(  0, "Play again.");
  
  states[9] = new State(  9, "The alien says its name is Henry and is mid panic attack.");
  states[9].add_link(  13, "Explain your situation.");
  states[9].add_link(  14, "Tell it puns until it can no longer feel anxiety.");
  
  states[11] = new State(  11, "The knife has gone through your hand. You have died of blood loss.");
  states[11].add_link(  0, "Play again.");
  
  states[13] = new State(  13, "YOU ACQUIRED HENRY'S HELP!");
  states[13].add_link(  19, "Talk to Henry.");
  
  states[14] = new State(  14, "You cause Henry to fall into a crippling existential crisis.");
  states[14].add_link(  36, "Henry ditches you.");
  
  states[36] = new State(  36, "Great. Now what?");
  states[36].add_link(  37, "Scream for someone else's help.");
  
  states[37] = new State(  37, "You have been captured by a man. You see Henry in the tank next to you.");
  states[37].add_link(  38, "The man tells you his name is Bork and that he plans to destroy Earth.");
  
  states[38] = new State(  38, "BORK: I'm going to send a missle with a toxic disease. It will end the human race.");
  states[38].add_link(  39, "Break out of the tank.");
  
  states[39] = new State(  39, "You still have a gun.");
  states[39].add_link(  40, "Shoot Bork.");
  states[39].add_link(  41, "Negotiate.");
  
  states[40] = new State( 40, "Bork knocked the gun out of your hand.");
  states[40].add_link(  42, "Bork shoots you and Henry. Earth is doomed.");
  states[40].add_link(  0, "Play again.");
  
  states[41] = new State(  41, "YOU EARNED HENRY'S LOVE!");
  states[41].add_link(  43, "Bork shoots Henry but drops his gun.");
  
  states[43] = new State(  43, "You take his gun.");
  states[43].add_link(  44, "Shoot the ship fuel.");
  states[43].add_link(  45, "Shoot Bork and leave in personal mini ship.");
  
  states[44] = new State(  44, "You and Bork have died. Earth is saved.");
  states[44].add_link(  0, "Play again.");
  
  states[45] = new State(  45, "You have lived. Earth is doomed.");
  states[45].add_link(  0, "Play again.");
  
  states[19] = new State(  19, "KAT (you): So do you have any idea how I got here?");
  states[19].add_link(  20, "HENRY: Well... Bork probably. He's always talking about Earth and humans.");
  
  states[20] = new State(  20, "KAT: Bork? Should I be scared of him?");
  states[20].add_link(  21, "HENRY: It's complicate. He's complicated. He's been through a lot.");
  
  states[21] = new State(  21, "KAT: You two seem close.");
  states[21].add_link(  22, "HENRY: Yeah. We've been copilots for years. He's just so comsumed by his past.");
  
  states[22] = new State(  22, "KAT: So where can I find this 'Bork'?");
  states[22].add_link(  23, "HENRY: Probably the control room. Follow me.");
  
  states[23] = new State(  23, "Before you leave you see a gun on the sink.");
  states[23].add_link(  24, "Grab the gun.");
  
  states[24] = new State(  24, "In the control room you see a man standing there. He may be dangerous.");
  states[24].add_link(  25, "HENRY: Bork... did you abduct this human?");
  
  states[25] = new State(  25, "BORK: Henry. Leave the room. I'd like to speak to the human alone.");
  states[25].add_link(  26, "Henry nervously leaves.");
  
  states[26] = new State(  26, "BORK: It's been a long time since I've been in the same room as a human.");
  states[26].add_link(  27, "KAT: Why did you bring me here?");

  
  states[27] = new State(  27, "BORK: To prepare. You can't really destroy Earth without saving a specimen.");
  states[27].add_link(  28, "KAT: Destroy Earth?! Why?");
  
  states[28] = new State(  28, "BORK: Humans only cause pain. Destroying Earth is the merciful thing to do.");
  states[28].add_link(  29, "KAT: Who hurt you?");
  
  states[29] = new State(  29, "BORK: It doesn't matter. There's no talking me out of this.");
  states[29].add_link(  30, "Shoot Bork.");
  states[29].add_link(  31, "Try to negotiate.");
  
  states[30] = new State(  30, "You have killed Bork.");
  states[30].add_link(  32, "Leave the room.");
  
  states[31] = new State(  31, "KAT: Forget your plans and let me live or I'll shoot.");
  states[31].add_link(  33, "BORK: Oh that's right, I had two guns... I don't appreciate empty threats.");
  
  states[32] = new State(  32, "HENRY: What happened? I tried to listen but I think the room's sound proof.");
  states[32].add_link(  34, "KAT: We worked it out! Wanna go on an adventure? Bork said you could.");
  
  states[33] = new State(  33, "KAT: I think empty threats show a lack of character.");
  states[33].add_link(  35, "Cock your gun.");
  
  states[34] = new State(  34, "HENRY: Really?! I don't know... Are you sure Bork is okay with it?");
  states[34].add_link(  72, "Comfort Henry.");
  
  states[35] = new State(  35, "BORK: I especially don't appreciate hesitation.");
  states[35].add_link(  50, "Bork shot you. You have died. Earth will be destroyed.");
  states[35].add_link(  0, "Play Again.");
  
  states[72] = new State(  72, "YOU HAVE EARNED HENRY'S LOVE!");
  states[72].add_link(  51, "You and Henry leave together. Earth is saved.");
  states[72].add_link(  0, "Play Again.");
}
  void drawChoice2(){
    fill(255);
  states[state].drawChoice();
}
//All the buttons
void mouseClicked() {
  //Changes channels in Scene 3
  if (mouseX>482 && mouseX<507 && mouseY>300 && mouseY<325){
    channel++; channel = channel %4;
  }
  //Changes scenes 0-9
  if(mouseX>1220 && mouseX<1240 && mouseY>height/2-10 && mouseY<height/2+10){
    Scene++;
  }
  //Player can go back (only in scenes 1-9)
  if(mouseX>40 && mouseX<60 && mouseY>height/2-10 && mouseY<height/2+10){
    Scene--;
  }
  //Says what the mouse method actually does
  if(Scene>8){
  states[state].mouse();
  }
}
