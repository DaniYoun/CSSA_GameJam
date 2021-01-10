
//This class is an observer the relation between obstacle and supporter
//This will check if the obstacle and support overlap
//Then notify the listener to deal with that
class SupporterObstacleObserver extends Observer {
  
  Supporter supporter;
  ObstacleList obstacles;
  
  public SupporterObstacleObserver (Supporter supporter, ObstacleList obstacles) {
     this.supporter = supporter;
     this.obstacles = obstacles;
  }
  
  public void notifyAllListener () {
    int notifyCode = Listener.NOT_REMOVE_FIRST_OBSTACLE;
    if (isSupporterCoverObstacle ()) {
      notifyCode = Listener.REMOVE_FIRST_OBSTACLE;
      println("Notify");
    }
    
    for (Listener listener : list) {
      listener.listen (notifyCode); 
    }
  }
  
  private boolean isSupporterCoverObstacle () {
    Obstacle obstacle = obstacles.getObstacle (ObstacleList.FIRST_OBSTACLE_INDEX);
    
    float[] obstaclePos = obstacle.getPosition ();
    
    float[] supporterPos = supporter.getPosition ();
    
    float rightSupporter = supporterPos[0] + supporter.getWidth() /2;
    float rightObstacle = obstaclePos[0] + obstacle.obstacleWidth /2;
    
    return rightObstacle <= rightSupporter;
  }
  
}
