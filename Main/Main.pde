
Game game;
GameController gameController;
GameView gameView;

void setup () {
  size(800, 600);
  game = new Game ();
  gameController = new GameController ();
  gameView = new GameView(game);
}

void draw () {
  gameController.update (game);
  gameView.draw ();
}
