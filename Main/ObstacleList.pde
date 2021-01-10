
class ObstacleList extends Model {

  public static final int OBSTACLE_NUMBER = 3;
  public static final int OBSTACLE_DISTANCE = 300;
  public static final int FIRST_OBSTACLE_INDEX = 0;

  ArrayList<Obstacle> list;

  public ObstacleList () {
    super(new float[] {width, 0});

    list = new ArrayList<Obstacle> ();

    fillUpList ();
  }

  public int getObstacleNumber () {
    return this.list.size();
  }

  /**
   * @purpose  fill up the list with the defined number of obstacles
   obstacles will have distance between them
   */

  private void fillUpList () {

    if (list.isEmpty ()) {
      //TODO: change the default position later
      Obstacle obstacle = new Obstacle (new float[] {width, height-100});
      list.add(obstacle);
    }
    while (list.size () <  OBSTACLE_NUMBER) {
      Obstacle lastObstacle = list.get(list.size () - 1);
      float[] lastObstaclePos = lastObstacle.getPosition ();
      float[] newObstaclePosition = new float[2];
      newObstaclePosition[Constants.X] = lastObstaclePos[Constants.X] + OBSTACLE_DISTANCE;
      newObstaclePosition[Constants.Y] = lastObstaclePos[Constants.Y];
      Obstacle newObstacle = new Obstacle (newObstaclePosition);

      list.add(newObstacle);
    }
  }

  /**
   * @purpose  {override} return the position of the first obstacle
   */
  @Override
    public float[] getPosition () {
    if (list.isEmpty ()) {
      fillUpList ();
    }

    Obstacle firstObstacle = list.get(FIRST_OBSTACLE_INDEX);

    return firstObstacle.getPosition ();
  }

  /**
   * Override funtion
   * @purpose  this function will move all obstacles in the list by a distance
   */
  @Override
    public void moveX (int direction, float distance) {
    for (Obstacle obstacle : this.list) {
      obstacle.moveX (direction, distance);
    }
  }

  /**
   * @purpose  remove the first obstacle 
   *           then fill up the list with new one at the last position
   */
  public void removeFirstObstacle () {
    list.remove(FIRST_OBSTACLE_INDEX);

    fillUpList ();
  }

  /**
   * @purpose  get obstacle in the array 
   *
   * @params  index {int} the position of the array in the index
   *
   * @return  obstacle {Obstacle} the obstacle in the list
   */
  public Obstacle getObstacle (int index) {
    return list.get(index);
  }
}

//This class will control obstacle list every frame 
class ObstacleListController extends Controller<ObstacleList> implements Listener {

  //Is runner get blocked by obstacle
  //True if runner is blocked by obstacle in x axis

  boolean isCollide;

  //If supporter cover all appearance of first obstacle
  boolean isRemoveFirstObstacle;

  public ObstacleListController (ObstacleList list, Game game) {
    super(list);
  }

  /** 
   * @purpose  this function will be called every frame to update obstacle list
   *           this will move the obstacle if they are not blocked by runner
   *           then remove the first obstacle if they overlap with the supporters mob
   */
  public void update () {
    if (isCollide) {
      //TODO: keep the runner and obstacle separate
    } else {
      movesObstacles ();
    };

    if (isRemoveFirstObstacle) {
      model.removeFirstObstacle ();
    }
  }

  private void movesObstacles () {
    float obstacleSpeed = game.gameSpeed;
    model.moveX(Constants.LEFT, obstacleSpeed);
  }

  @Override
    public void listen (int data) {
    switch (data) {
    case Listener.REMOVE_FIRST_OBSTACLE:
      isRemoveFirstObstacle = true;
      break;
    case Listener.NOT_REMOVE_FIRST_OBSTACLE:
      isRemoveFirstObstacle = false;
      break;
    case Listener.RUNNER_COLLIDE_OBSTACLE:
      isCollide = true;
      break;
    case Listener.RUNNER_NOT_COLLIDE_OBSTACLE:
      isCollide = false;
      break;
    }
  }
}


class ObstacleListView extends View<ObstacleList> {

  ObstacleView[] views;

  public ObstacleListView (ObstacleList list) {
    super (list);

    views = new ObstacleView[ObstacleList.OBSTACLE_NUMBER];

    for (int i = 0; i < ObstacleList.OBSTACLE_NUMBER; i ++) {
      views[i] = new ObstacleView (this.model, i);
    }
  }

  public void draw () {
    for (ObstacleView view : views) {
      view.draw ();
    }
  }
}
