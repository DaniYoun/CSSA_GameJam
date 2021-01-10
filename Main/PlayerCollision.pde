class PlayerCollision extends Observer{
 Supporter supporter;
 ObstacleList obstacles;
 Player player;
 
 public collisionObserver(Supporter supporter, ObstacleList obstacles, Player player){
   this.supporter = supporter;
   this.obstacles = obstacles;
   this.player = player;
 }
  
  public void notifyAllListeners(){
   int notifyCode = Listener.RUNNER_NOT_COLLIDE_OBSTACLE;
    
    if(playerCollided()){
      notifyCode = Listener.RUNNER_COLLIDE_OBSTACLE;
      println("Player Collided");
    }
  }
  
  
  boolean playerCollided(){
    Obstacle obstacle = obstacles.getObstacle (ObstacleList.FIRST_OBSTACLE_INDEX);
    
    float[] obstaclePos = obstacle.getPosition ();
    
    float[] supporterPos = supporter.getPosition ();
    
    float rightSupporter = supporterPos[0] + supporter.getWidth() /2;
    float rightObstacle = obstaclePos[0] + obstacle.obstacleWidth /2;
    
    float playerPos = player.getPosition();
    
    return (rightObstacle <= rightSupporter || playerPos <= rightSupporter);
  }
}
