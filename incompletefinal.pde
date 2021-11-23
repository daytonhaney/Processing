import processing.sound.*;  // this is the code that needs to be typed to bring music/sound into the processing en

import controlP5.*; // this is what you type to import other librarys into your envornment. the name of my library is controlP5

SoundFile sound; // activates the sound right away

ControlP5 button; // activates control p5 i named it button because that is why i am using the controp5 for its buttons

// does not really make a huge impact to my game , its just for fun
// to use the controlp5

PFont font;
String s = "Text Typer";
String w = "Welcome to my game:";
String [] answers =  { "U", "A", "B"};  // i made my answers into an array so its easy acces during my coding 
String [] questions = {"Comp_ter Science", "Bill G_tes", "Steve Jo_s"}; // i made all my " data" into more arrays
String [] randoms = {" C ", " H ", " J ", " P ", " F ", " W "}; // made to confuse and complicate for players


boolean j = false; // activating my boolean 
/*
           also using the white space above the set up
 to chose the type of variable i need 
 and give these variables their values
 alot of the variables i use are global
 
 */
// variables incase i need color values or background changes perhaps 



int r = 0; 
int g = 0;
int b = 0; 


int Button;
int x = 150; // where object is located on x axis 

int y = 100; // y axis

int speed = 2 ; // sets speed of ball

int slide_me = 100;  // the buttons need names
int slide = 100;
int slides = 100;
float timecheck ; 



void setup() {

  // this is my canvas  for the set up area
  // things i only need 1 time 
  font = loadFont("SegoeUIBlack-Italic-48.vlw");
  textFont(font);



  size(700, 500);

  button = new ControlP5(this);

  Slider i = button.addSlider("slide", 0, 255, 150, 220, 10, 150, 50); // these were all the parameters needed for the sliders
  Slider a = button.addSlider("slides", 0, 255, 50, 400, 10, 150, 50);
  sound = new SoundFile(this, "Digital-Downtown_Looping.mp3"); // this is the syntax needed for importing the sounds 
  sound.play(); // using the play function to activae my music named sound 
  sound.loop(); // music plays forever 
  color(slide_me);
}

void draw() { // activating the draw in my program

  //  60 frames/second
  background(slide); // program background using the controlp5 button 
  background(45);
  stroke(slides); // created for user interaction only 
  fill(slide_me);
  move(); // calling the move function
  display();// calling the display function  from the method coding in the bottom 
  question();
  mainmenu();
  randoms();
  mainscreen();
  keyPressed();
}


void move () {

  y = y + speed; // ball goes down y axis at set speed
  if ( y > height) // travels continuously along the height
    y = 50; // when reaching end of the height set the ball will begin back at the 0 on y axis
}


void display() { // draw his display first 


  fill(random(255), random(255), random(255));
  fill(200);
  textSize(45);
}


void question() { // next thing draw sees is the question object

  fill(slide);
  text(questions[0], 150, 150);
  textSize(40);
}



void mainmenu() {

  strokeWeight(5); // this is the lines and the main menu for the game 
  fill(220);
  line(500, 200, 700, 200);
  line(500, 200, 500, 700);
  textSize(20);
  strokeWeight(1.5);

  text("MAIN MENU", 550, 250);
  line(500, 275, 700, 275);
  textSize(15);

  text(" Type the correct", 525, 300); // didnt do strings for all texts 
  text("letter to complete", 528, 330);
  text(" the word", 525, 360);
}

void randoms () { // this is where i drop array of letters to throw off the player 

  // this is where I will drop my array of my 6 random letters
  fill(random(255), random(255), random(255));
  textSize(40);
  text(randoms[2], 150, y+5); // the y + makes the letters look like they are falling at different speeds
  text(randoms[3], 200, y+2);
  text(randoms[4], 225, y+10 ); // tried making them float 
  text(randoms[5], 315, y +150);
  text(randoms[0], 500, y +5);
  text(answers[0], 110, y +.5);
  loop();
}


void mainscreen() { //another element added to the main screen 

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

  if (key == 'u') {  // had trouble getting the screens to happen in the correct sequence

    background(144); // this is what happens if the u is hit on the keyboard
    noLoop();
    text(questions[1], width/3, height / 2 );
  } else {

    fill(200);
    text("try again", width/3, height/2);

    textSize(100);
  }

  if (key=='a') {
    for (  a = 0; a < 95; a +=5);  // this is for when the player enters the correct
    if ( a > 35) {                 // letter it changes a value in a variable
      background(#63636A);         // if the variable criteria is not met
      randoms();                  // the next window comes up for questions 2 
      text(questions[2], width/3, height/2);
      mainmenu();
      noLoop();
      } else {   // this will pop up if you hit the wrong button 
    text("try again", width/3, height/2); // the text 

    textSize(75);
    }
  }
}
