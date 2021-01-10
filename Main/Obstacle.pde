class Obstacle extends Model {

  public static final int DEFAULT_HEIGHT = 200;
  public static final int DEFAULT_WIDTH = 100;

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
  ObstacleList list;
  int obstacleIndex;

  public ObstacleView (ObstacleList list, int index) {
    super(list.getObstacle(index));

    this.list = list;
    this.obstacleIndex = index;
  }

  public void draw () {
    model = list.getObstacle(obstacleIndex);
    
    float[] position = model.getPosition();
    float left = position[Constants.X] - model.obstacleWidth/2;
    float top = position[Constants.Y] - model.obstacleHeight/2;
    rect(left, top, model.obstacleWidth, model.obstacleHeight);
  }
}

class Mob extends Model {
  public Mob (float[] position) {
    super(position);
  }
}
