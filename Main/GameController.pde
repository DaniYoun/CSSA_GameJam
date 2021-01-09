
//This class will update, change game data every frame
class GameController extends Controller<Game> {

  ObstacleListController obstaclesController;

  public GameController (Game game) {
    super(game);

    obstaclesController = new ObstacleListController(game.obstacles, game);
  }

  public void update () {
    //TODO: add checking if the player hit the supporter aka hitpoint behind
    
    obstaclesController.update ();
    
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

    return false;
  }

  /**
   * @purpose  increase the speed of the game
   after one interval
   */
  private void levelUp (Game game) {
    //TODO: level up game after a while SPEED_UP_INTERVAL
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
