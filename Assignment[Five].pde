float x = 100;
float y = 100;
float w = 150;
float h = 150;
//circular button setup//
float a = 300;
float b = 100;
float c = 150;
float d = 200;
//rectangle button setup//
void setup() {
  size(500,500);
  background(0);
  stroke(255);
  fill(250,40,60);
}

void draw() {
  background(0);
  fill(250,40,60);
  ellipse(x,y,w,h);
  if(mousePressed) {
    if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h){
      println("READY TO BEGIN? PRESS THE BLUE BUTTON.");
      fill(0);
    }
  }
  fill(255);
  textSize(30);
  text("STARTER", 40, 100);
  
  fill(30,50,200);
  rect(a,b,c,d);
  if(mousePressed){
    if(mouseX>a && mouseX<a+c && mouseY>b && mouseY<b+d){
      println("INITIATING DIMENSIONAL WARP...");
      fill(160);
      background(255);
    }
  }
  fill(255);
  textSize(30);
  text("WARP", 330,200);
}
