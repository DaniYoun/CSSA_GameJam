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
  
  public Game () {
  }

  ArrayList<Obstacle> obstacleList;

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
    //TODO: add Checking collision between player and 
    movingObjects (game);
    
    //TODO: add checking if the player hit the supporter aka hitpoint behind
    
    levelUp (game);
    //TODO: add Checking collision between bullet and star
    
  }
  
  private void movingObjects (Game game) {
    //TODO:moving objects in the screen
  }
  
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
