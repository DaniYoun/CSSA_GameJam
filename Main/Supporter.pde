class Supporter extends Model {
  float supporterHeight;
  float supporterWidth;

  public Supporter (float[] position) {
    super(position);

    supporterHeight = 300;
    supporterWidth = 300;
  }

  public float getWidth () {
    return this.supporterWidth;
  }

  public float getHeight () {
    return this.supporterHeight;
  }
}

class SupporterController extends Controller<Supporter> implements Listener {
  Game game;

  boolean isCollide;

  public SupporterController (Supporter supporter, Game game) {
    super(supporter);
    this.game = game;
  }

  public void update () {
    if (isCollide) {
      moveSupporter ();
    };
  }

  private void moveSupporter () {
    float speed = game.gameSpeed;

    this.model.moveX(Constants.RIGHT, speed);
  }

  @Override
    public void listen (int data) {
    switch (data) {
    case Listener.RUNNER_COLLIDE_OBSTACLE:
      isCollide = true;
      break;
    case Listener.RUNNER_NOT_COLLIDE_OBSTACLE:
      isCollide = false;
      break;
    }
  }
}

class SupporterView extends View<Supporter> {
  public SupporterView (Supporter supporter) {
    super(supporter);
  }

  public void draw () {    
    float[] position = model.getPosition();
    float left = position[Constants.X] - model.getWidth () /2;
    float top = position[Constants.Y] - model.getHeight ()/2;
    rect(left, top, model.getWidth(), model.getHeight());
  }
}
