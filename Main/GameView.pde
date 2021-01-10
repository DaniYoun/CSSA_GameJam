// This class will draw everything in the game
class GameView extends View<Game> {  
  ObstacleListView obstaclesView;
  SupporterView supporterView;

  public GameView (Game game) {
    super(game);

    obstaclesView = new ObstacleListView (model.obstacles);
    supporterView = new SupporterView (model.supporter);
  }

  public void draw () {
    background (100);
    obstaclesView.draw ();
    supporterView.draw ();
  }
}
