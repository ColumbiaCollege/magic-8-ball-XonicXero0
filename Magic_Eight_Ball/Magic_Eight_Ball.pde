//Magic 8 Ball by Eric Price

//Int and strings
String RA [] = {"Yes", "No", "Yep", "Nah", "Maybe", "Perhaps", "Likely", "Not likely"};
boolean A = false;

//setup 
void setup() {
  size(1000, 600);
  background(#019028);
  ellipseMode(RADIUS);
  textAlign(CENTER);
  noLoop();
}

void draw() {

  //pick random answer  
  int i=int(random(0, 8)); 

  //black part of the ball
  strokeWeight(1);
  fill(#242422);
  ellipse(500, 300, 250, 250);

  //white part of the ball
  strokeWeight(5);
  stroke(#151514);
  fill(255);
  ellipse(500, 300, 145, 145);

  //number 8
  textSize(200);
  fill(0);
  text("8", 500, 370);

  if (A == true) {

    //black backgroud for answers
    strokeWeight(5);
    stroke(#151514);
    fill(0);
    ellipse(500, 300, 145, 145);

    //triangle for answers 
    strokeWeight(1);
    stroke(#151514);
    fill(#350843);
    triangle(380, 230, 500, 440, 620, 230);

    //answers
    textSize(20);
    fill(240);
    text (RA[i], 500, 300);

  }
}

void mousePressed() {
  //makes the answers appear 
  A=true;
  //redraws to allow for new answers 
  redraw();
}
