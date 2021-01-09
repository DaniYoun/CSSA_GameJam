class Obstacle extends Model {

  int obstacleHeight;
  int obstacleWidth;

  public Obstacle (float[] position) {
    super(position);
  }

  public Obstalce (float[] position, int obstacleHeight, int obstacleWidth) {
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
