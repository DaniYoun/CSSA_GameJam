class Player extends Model {
  public static final float PLAYER_HEIGHT = Game.SCREEN_HEIGHT/4;
  public static final float PLAYER_WIDTH = Game.SCREEN_WIDTH/32 * 3;
  public static final float DEFAULT_POSITION_X = Supporter.SUPPORTER_WIDTH*2/3;
  public static final float DEFAULT_POSITION_Y = Game.SCREEN_HEIGHT-PLAYER_HEIGHT/2;
  //public static final float JUMP_CELLING = 400; // highest jump from the center of the model

  public static final float INIT_SPEED_Y = -8;
  public static final float DEFAULT_GRAVITY = 0.2;
  

  //Constant Speed of the runner
  //Size of the runner, also used for collision

  private float playerHeight = PLAYER_HEIGHT;
  private float playerWidth = PLAYER_WIDTH;
  float jumpSpeed;
  float gravity;
  final float jumpFloor; // Initial position of the model

  //Initially is runner is alive
  boolean isAlive = true;



  public Player(float[] position) {
    super(position);
    jumpFloor = position[1];
  }

  //Function of setting the model position
  Player() {
    super(new float[] {DEFAULT_POSITION_X, DEFAULT_POSITION_Y});
    jumpFloor = DEFAULT_POSITION_Y;
    gravity = DEFAULT_GRAVITY;
  }


  public void startJump () {
    if (!isJumping ()) {
      jumpSpeed = INIT_SPEED_Y;
    }
  }

  public boolean isJumping () {
    return jumpSpeed != 0;
  }

  public void update () {
    if (isJumping ()) {
      
      position[1] += jumpSpeed;
      jumpSpeed += gravity;
    }

    if (position[1] > DEFAULT_POSITION_Y) {
      land ();
    }
  }
  
  public void land () {
    position[1] =  DEFAULT_POSITION_Y;
    jumpSpeed = 0;
  }

  float getHeight() {
    return playerHeight;
  }

  float getWidth() {
    return playerWidth;
  }
}
