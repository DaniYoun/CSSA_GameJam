// This class will draw everything in the game
class GameView extends View<Game> {  
  ObstacleListView obstaclesView;
  
  public GameView (Game game) {
    super(game);
    
    obstaclesView = new ObstacleListView (model.obstacles);
  }

  public void draw () {
    background (100);
    obstaclesView.draw ();
  }
}
