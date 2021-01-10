class BulletCollision {
  private ArrayList<Bullet> bullets;
  private ArrayList<Star> stars;
  float starSize = 50;

  BulletCollision(ArrayList<Bullet> bullets, ArrayList<Star> stars) {
    this.bullets = bullets;
    this.stars = stars;
  }

  void checkCollision() {
    ArrayList<Bullet> removedBullet = new ArrayList();
    ArrayList<Star> removedStars = new ArrayList();


    for (Bullet bullet : bullets) {
      for (Star star : stars)
      {
        float distance = sqrt((bullet.x - star.position[0]) * (bullet.x - star.position[0]) - (bullet.y - star.position[1]) * (bullet.y - star.position[1]));

          float totalSize = bullet.size + starSize;

        if (distance < totalSize) {
          removedBullet.add(bullet);
          removedStars.add(star);

          //Reward for the player will go here
        }
      }

      stars.removeAll(removedStars);
      removedStars.clear();
    }
    bullets.removeAll(removedBullet);
    removedBullet.clear();
  }
}
