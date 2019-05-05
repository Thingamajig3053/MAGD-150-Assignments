import processing.pdf.*;
PFont f;
PFont z;
PImage img;
//I am making two different PFonts, f and z

void setup() {
  size(600,600);
  beginRecord(PDF, "BolbiPoster.pdf");
  img = loadImage("BOLBI.jpg");
  f = createFont("Georgia",100);
  z = createFont("Times New Roman",25);
  //Here I am using the same font in different PFonts
  //and in different sizes in order to present
  //the movie title as well as the subtitle.
}

void draw() {
  background(0);
  image(img,-100,-200);
  //importing added image for background on poster
  stroke(175);
  textFont(f);
  fill(255);
  
  textAlign(CENTER);
  text("BOLBI", width/2, 500);
  textFont(z);
  text("Slap, slap, slap. Clap, clap, clap", width/2, 530);
}

void keyPressed() {
  if (key == 'b') {
    endRecord();
    exit();
    //if key b is pressed, the poster will be recorded into a pdf
  }
}
