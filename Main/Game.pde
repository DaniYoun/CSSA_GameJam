// This class will draw everything in the game
class GameView extends View<Game> {  
  public GameView (Game game) {
    super(game);
  }

  public void draw () {
  }
}

//This class will contain the model, the data of the game
//Example: it would contain the position of player, ...
class Game extends Model {

  final float SPEED_UP_RATE = 1.5;
  final int SPEED_UP_INTERVAL = 60 * 5; //60fps * 5 sec

  float gameSpeed;

  int time;

  boolean isGameRunning;

  ObstacleList obstacles;

  public Game () {
  }

  public void initGame () {
  }

  public float[] getPosition () {
    return new float[0];
  };
}

//This class will update, change game data every frame
class GameController extends Controller<Game> {
  public GameController (Game game) {
    super(game);
  }

  public void update () {
    //TODO: add checking if the player hit the supporter aka hitpoint behind
    movingObjects (game);
    levelUp (game);
    //TODO: add Checking collision between bullet and star
  }

  /**
   * @purpose  check if the game is over
   *           check the position of runner and supporter
   * 
   * @params   Runner {Runner extends Model}
   * @params   Mob {Mob extends Model}
   *
   * @return   if the runner overlap mob -> gameover
   */
  boolean isGameover () {
  }

  /**
   * @purpose  moving objects in the game
   *           moving obstacle to the left if they dont get blocked by the runner
   *           if obstacles get blcoked, the supporter move forward. 
   *
   * @params  game {Game} the game object
   */
  private void movingObjects (Game game) {
    //TODO:moving objects in the screen
  }

  /**
   * @purpose  increase the speed of the game
   after one interval
   */
  private void levelUp (Game game) {
    //TODO: level up game after a while SPEED_UP_INTERVAL
  }
}

//This class will controll obstacle list
//Checking if obstacle is over the screen and delete it
//Adding new obstacle
class ObstacleListController extends Controller<Game> {

  public ObstacleListController (Game game) {
    super(game);
  }

  public void update () {
  }
}

//This class will initialize all data for the game 
//Or reset data of the game back to beginning
class GameStarter extends Controller<Game> {
  public GameStarter (Game game) {
    super(game);
  }
  public void update () {
  }
}
