class BulletCollision {
  private ArrayList<Bullet> bullets;
  private ArrayList<Star> stars;
<<<<<<< HEAD
  float starSize = 50;

  BulletCollision(ArrayList<Bullet> bullets, ArrayList<Star> stars) {
=======
  //float starSize = 50;
  
  BulletCollision(ArrayList<Bullet> bullets,ArrayList<Star> stars){
>>>>>>> e52963d99bbf5107cdb5b584bf1ce0b3241ae8cd
    this.bullets = bullets;
    this.stars = stars;
  }

  void checkCollision() {
    ArrayList<Bullet> removedBullet = new ArrayList();
    ArrayList<Star> removedStars = new ArrayList();


    for (Bullet bullet : bullets) {
      for (Star star : stars)
      {
<<<<<<< HEAD
        float distance = sqrt((bullet.x - star.position[0]) * (bullet.x - star.position[0]) - (bullet.y - star.position[1]) * (bullet.y - star.position[1]));

          float totalSize = bullet.size + starSize;

        if (distance < totalSize) {
          removedBullet.add(bullet);
          removedStars.add(star);

          //Reward for the player will go here
        }
=======
         float distance = sqrt((bullet.x - star.position[0]) * (bullet.x - star.position[0]) - (bullet.y - star.position[1]) * (bullet.y - star.position[1])) 
         
         float totalSize = bullet.size + star.getSize();;
         
         if(distance < totalSize){
           removedBullet.add(bullet);
           removedStars.add(star);
           
           //Reward for the player will go here
         }
>>>>>>> e52963d99bbf5107cdb5b584bf1ce0b3241ae8cd
      }

      stars.removeAll(removedStars);
      removedStars.clear();
    }
    bullets.removeAll(removedBullet);
    removedBullet.clear();
  }
}
