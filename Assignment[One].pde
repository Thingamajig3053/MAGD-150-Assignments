size(500,500);
background(200);
//setting up size and bkgd//
noStroke();
fill(225);
ellipse(250,500,1000,1000);
fill(255);
ellipse(250,500, 800,800);
//ellipses used to creat a spotlight-esque background for the buildings//
rectMode(CORNER);
fill(55);
rect(0,150,500,350);
fill(35);
rect(100,100,100,400);
rect(300,100,100,400);
rectMode(CENTER);
fill(10);
rect(250,250,150,500);
//buildings//
stroke(220);
strokeWeight(10);
line(250,0,250,500);
line(225,0,225,500);
line(200,0,200,500);
line(275,0,275,500);
line(300,0,300,500);
stroke(70);
strokeWeight(50);
point(140,500);
point(360,500);
