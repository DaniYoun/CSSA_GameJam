class RunningAnimation extends Animation {
  public RunningAnimation () {
    super ();
    PImage running1 = loadImage("../assets/player/player1.png");
    PImage running2 = loadImage("../assets/player/player2.png");
    PImage running3 = loadImage("../assets/player/player3.png");
    PImage running4 = loadImage("../assets/player/player4.png");

    loadImages(running1, running2, running3, running4);
  }
}

class JumpingAnimation extends Animation {
  public RunningAnimation () {
    super ();
    PImage running1 = loadImage("../assets/player/player1.png");
    PImage running2 = loadImage("../assets/player/player2.png");
    PImage running3 = loadImage("../assets/player/player3.png");
    PImage running4 = loadImage("../assets/player/player4.png");

    loadImages(running2, running3, running4, running1);
  }
  
  public startJumping () {
    count = 0;
  }
  
}
