class StarView extends View<Star> {
  public PlayerView (Star star) {
    super(star);
  }

  public void draw () {

    float[] position = model.getPosition();

    circle(position[0], position[1], model.getWidth ());
  }
}
