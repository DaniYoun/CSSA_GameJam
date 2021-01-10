
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
  
  public void notifyAllListener {
    for (Listener listener : list) {
      listener.listen (); 
    }
  }
  
  private boolean isOverlap () {
    
  }
  
}
