class BulletCollision{
  private ArrayList<Bullet> bullets;
  private ArrayList<Star> stars;
  
  BulletCollision(ArrayList<Bullet> bullets,ArrayList<Star> stars){
    this.bullets = bullets;
    this.stars = stars;
  }
  
  boolean checkCollision(){
    ArrayList<Bullet> removedLaser = new ArrayList();
    ArrayList<Star> removedStar = new ArrayList();
    
    boolean collided = false;
    for(Bullet bullet : bullets){
      for(Star star : stars)
      {
         float distance = sqrt((bullet.x - star.position[0]) * (bullet.x - star.position[0]) - (bullet.y - star.position[1]) * (bullet.y - star.position[1])) 
         
         float totalSize = bullet.size + star.
      }
    }
  
  }
  
}
