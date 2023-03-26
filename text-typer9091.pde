import processing.sound.*; 
import controlP5.*;
SoundFile sound;
ControlP5 button; 

PFont font;
String s = "Text Typer";
String w = "Welcome to my game:";
String [] answers =  { "U", "A", "B"};  /
String [] questions = {"Comp_ter Science", "Bill G_tes", "Steve Jo_s"}; 
String [] randoms = {" C ", " H ", " J ", " P ", " F ", " W "};

boolean j = false; 

int r = 0; 
int g = 0;
int b = 0; 
int Button;
int x = 150; /
int y = 100; //
int speed = 2 ;
int slide_me = 100; 
int slide = 100;
int slides = 100;
float timecheck ; 

void setup() {

  // this is my canvas for the set up area
  // + things i only need 1 time 
  font = loadFont("SegoeUIBlack-Italic-48.vlw");
  textFont(font);

  size(700, 500); // creating the size of the window in pixles

  button = new ControlP5(this);

  Slider i = button.addSlider("slide", 0, 255, 150, 220, 10, 150, 50);
  Slider a = button.addSlider("slides", 0, 255, 50, 400, 10, 150, 50);
  sound = new SoundFile(this, "Digital-Downtown_Looping.mp3");
  sound.play(); d 
  sound.loop(); 
  color(slide_me);
}

void draw() {

  //  60 frames/second
  background(slide); 
  background(45);
  stroke(slides);
  move(); 
  display();
  question();
  mainmenu();
  randoms();
  mainscreen();
  keyPressed();
}


void move () {

  y = y + speed; /
  if ( y > height) 
    y = 50; 
}

void display() { // draw his display first 

  fill(random(255), random(255), random(255));
  fill(200);
  textSize(45);
}

void question() {

  fill(slide);
  text(questions[0], 150, 150);
  textSize(40);
}

void mainmenu() {

  strokeWeight(5);
  fill(220);
  line(500, 200, 700, 200);
  line(500, 200, 500, 700);
  textSize(20);
  strokeWeight(1.5);

  text("MAIN MENU", 550, 250);
  line(500, 275, 700, 275);
  textSize(15);

  text(" Type the correct", 525, 300); 
  text("letter to complete", 528, 330);
  text(" the word", 525, 360);
}

void randoms () { r 

  fill(random(255), random(255), random(255));
  textSize(40);
  text(randoms[2], 150, y+5); 
  text(randoms[3], 200, y+2);
  text(randoms[4], 225, y+10 );
  text(randoms[5], 315, y +150);
  text(randoms[0], 500, y +5);
  text(answers[0], 110, y +.5);
  loop();
}


void mainscreen() { 

  fill(#E53F15);
  textSize(18);
  stroke(12);
  text(w, 15, 30);
  textSize(25);
  strokeWeight(5);
  text(s, 15, 300);
}

void keyReleased() {

  int u = 0; 
  int a = 0;
  int b = 0;

  if (key == 'u') {  
    background(144); 
    noLoop();
    text(questions[1], width/3, height / 2 );
  } else {

    fill(200);
    text("try again", width/3, height/2);

    textSize(100);
  }

  if (key=='a') {
    for (  a = 0; a < 95; a +=5);  
    if ( a > 35) {                 
      background(#63636A);      
      randoms();                
      text(questions[2], width/3, height/2);
      mainmenu();
      noLoop();
      } else {  
    text("try again", width/3, height/2); // the text 

    textSize(75);
    }
  }
}
