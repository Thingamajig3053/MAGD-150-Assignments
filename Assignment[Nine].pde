//floral background from Doodlecraft:
//https://www.doodlecraftblog.com/2015/03/vintage-floral-wallpaper-freebies.html
PImage img;

import processing.sound.*;
AudioIn in;
Reverb reverb;
//beginning setup for Reverb effect
import processing.video.*;
Capture cam;
//setting up video capture for the mirror aspect of the project

void setup() {
  size(800, 700);
  in = new AudioIn(this,0);
  reverb = new Reverb(this);
  in.play();
  reverb.process(in);
img = loadImage("CUTEFlowerBKG.jpg");
//loading image for background
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("ARE YOU A VAMPIRE?");
    exit();
  } else {
    println("TAKE A LOOK-SEE");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    //creating two different messages for whether or not a camera is detected
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }      
}

void draw() {
  image(img,0,0);
  tint(#ffc0cb);
  //creating pink tint using hexadecimal value
  if (cam.available() == true) {
    cam.read();
  }
  image(cam, 80,70);
  //establishing a size for the camera display that fits properly in the 
  //middle of the file and slightly vertically asymmetrical 
}
