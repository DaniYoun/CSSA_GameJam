class Obstacle extends Model {
  
  public Obstacle (float[] position) {
    super(position);
  }
  
}

class ObstacleView extends View<Obstacle> {

  public ObstacleView (Obstacle obstacle) {
     super(obstacle); 
  }
  
  public void draw () {
    
  }
}
