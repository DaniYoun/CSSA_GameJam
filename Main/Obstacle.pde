class Obstacle extends Model {

  public final int DEFAULT_WIDTH = 100;
  public final int DEFAULT_HEIGHT = 200;

  int obstacleHeight;
  int obstacleWidth;

  public Obstacle (float[] position) {
    super(position);
    this.obstacleWidth = DEFAULT_WIDTH;
    this.obstacleHeight = DEFAULT_HEIGHT;
  }

  public Obstacle (float[] position, int obstacleHeight, int obstacleWidth) {
    super(position);
    this.obstacleWidth = obstacleWidth;
    this.obstacleHeight = obstacleHeight;
  }
}



class ObstacleView extends View<Obstacle> {

  public ObstacleView (Obstacle obstacle) {
    super(obstacle);
  }

  public void draw () {
  }
}

class Mob extends Model {
  public Mob (float[] position) {
    super(position);
  }
}
