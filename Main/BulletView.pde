class BulletView extends View<Bullet> {
  public BulletView (Bullet bullet) {
    super(bullet);
  }

  public void setModel (Bullet bullet) {
    this.model = bullet;
  }

  public void draw () {
    float[] position = model.getPosition();
    float left = position[Constants.X] - model.getWidth () /2;
    float top = position[Constants.Y] - model.getheight ()/2;
    rect(left, top, model.getWidth (), model.getheight ());
  }
}

class BulletListView extends View<Game> {
  BulletView bulletView;

  public BulletListView(Game game) {
    super(game); 
    bulletView = new BulletView (0, 0, 0, 0, 0);
  }

  public void draw () {
    for (Bullet bullet : game.bulletList) {
      bulletView.setMode(bullet);
      bulletView.draw ();
    }
  }
}
