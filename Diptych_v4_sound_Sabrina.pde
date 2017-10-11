
import ddf.minim.*;

Minim minim;
// Sounds for Right output
AudioPlayer rOneSound;
AudioPlayer rTwoSound;
AudioPlayer rThreeSound;
AudioPlayer rFourSound;
AudioPlayer rFiveSound;
// Sounds for Left output
AudioPlayer lOneSound;
AudioPlayer lTwoSound;
AudioPlayer lThreeSound;
AudioPlayer lFourSound;
AudioPlayer lFiveSound;

//Screen Images LEFT
PImage lFive;
PImage lFour;
PImage lThree;
PImage lTwo;
PImage lOne;
//Button Images LEFT
PImage lBFive;
PImage lBFour;
PImage lBThree;
PImage lBTwo;
PImage lBOne;
// Screen Images RIGHT
PImage rOne;
PImage rTwo;
PImage rThree;
PImage rFour;
PImage rFive;
//Button Images RIGHT
PImage rBOne;
PImage rBTwo;
PImage rBThree;
PImage rBFour;
PImage rBFive;
void setup () {
  size(760, 500);
  background(0);

  minim = new Minim(this);
  lOneSound = minim.loadFile("groove.mp3");
  lTwoSound = minim.loadFile("jingle.mp3");
/*
  rThreeSound = minim.loadFile("file.mp3");
  rFourSound = minim.loadFile("file.mp3");
  rFiveSound = minim.loadFile("file.mp3");
  lOneSound = minim.loadFile("file.mp3");
  lTwoSound = minim.loadFile("file.mp3");
  lThreeSound = minim.loadFile("file.mp3");
  lFourSound = minim.loadFile("file.mp3");
  lFiveSound = minim.loadFile("file.mp3");
*/
  //Load Image Button LEFT
  lBFive = loadImage("lBFive.png");
  lBFour = loadImage("lBFour.png");
  lBThree = loadImage("lBThree.png");
  lBTwo = loadImage("lBTwo.png");
  lBOne = loadImage("lBOne.png");

  //Load Image Button RIGHT
  rBFive = loadImage("rBFive.png");
  rBFour = loadImage("rBFour.png");
  rBThree = loadImage("rBThree.png");
  rBTwo = loadImage("rBTwo.png");
  rBOne = loadImage("rBOne.png");
}
void draw() {
  drawLeft();  
  drawRight();
  redraw();
}

void keyPressed()
{
  if (key=='a') {
    lOne = loadImage("lOne.png");
    image(lOne, 80, 50);
    lOneSound.play();
  }
  if (key=='s') {
    lTwo =  loadImage("lTwo.png");
    image(lTwo, 80, 50);
    // stop all sound
    lTwoSound.play();
  }
  if (key=='d') {
    lThree =  loadImage("lThree.png");
    image(lThree, 80, 50);
    //lThreeSound.play();
  }
  if (key=='f') {
    lFour =  loadImage("lFour.png");
    image(lFour, 80, 50);
    //lFourSound.play();
  }
  if (key=='v') {
    lFive =  loadImage("lFive.png");
    image(lFive, 80, 50);
    //lFiveSound.play();
  }
  if (key == ';' || key == ':') {    // rBOne = ;
    rOne = loadImage("rOne.png");
    image(rOne, 460, 50);
    //rOneSound.play();
  }
  if (key == 'l' || key == 'L') {    // rBTwo = l/L
    rTwo = loadImage("rTwo.png");
    image(rTwo, 460, 50);
    //rTwoSound.play();
  }
  
  if (key == 'k' || key == 'K') {    // rBThree = k/K
    rThree = loadImage("rThree.png");
    image(rThree, 460, 50);
    //rThreeSound.play();
  }
  if (key == 'j' || key == 'J') {    // rBFour = j/J
    rFour = loadImage("rFour.png");
    image(rFour, 460, 50);
    //rFourSound.play();
  }
  if (key == 'n' || key == 'N') {    // rBFive = n/N
    rFive = loadImage("rFive.png");
    image(rFive, 460, 50);
    //rFiveSound.play();
  }
}
void drawLeft() {
  image(lBOne, 20, 300);
  image(lBTwo, 80, 300);
  image(lBThree, 140, 300);
  image(lBFour, 200, 300);
  image(lBFive, 260, 300);
}
void drawRight() {
  image(rBOne, 420, 300);
  image(rBTwo, 480, 300);
  image(rBThree, 540, 300);
  image(rBFour, 600, 300);
  image(rBFive, 660, 300);
}