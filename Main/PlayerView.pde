class PlayerView extends View<Player> {
  public PlayerView (Player player) {
    super(player);
  }

  public void draw () {

    float[] position = model.getPosition();
    float left = position[Constants.X] - model.getWidth () /2;
    float top = position[Constants.Y] - model.getheight ()/2;
    rect(left, top, model.getWidth (), model.getheight ());
  }
}
