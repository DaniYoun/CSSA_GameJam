
Game game;
GameController gameController;
GameView gameView;

void setup () {
  size(800, 600);
  game = new Game ();
  gameController = new GameController (game);
  gameView = new GameView(game);
}

void draw () {
  gameController.update ();
  gameView.draw ();
}
