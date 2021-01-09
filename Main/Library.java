//This class is the super class for all class has function of drawing objects
abstract class View<E extends Model> {
  protected E model;

  public View (E model) {
    this.model = model;
  }
  abstract void draw ();
}

//This class is the super class for all classes have function of changing game data
abstract class Controller<E extends Model> {
  protected E model;

  public class Controller (E model) {
    this.model = model;
  }

  abstract void update ();
}

//This class is the super class for all classes that contain game data, object data
abstract class Model {

  float[] position;

  public Model () {
  }

  public Model (float[] position) {
    this.position = position;
  }

  float[] getPosition () {
    return this.position;
  }
}
