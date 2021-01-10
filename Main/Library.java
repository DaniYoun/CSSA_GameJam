
class Constants {
  public static final int X = 0;
  public static final int Y = 1;

  public static final int LEFT = -1;
  public static final int RIGHT = 1;
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

  /**
   * @purpose  move the object horizontally 
   *           by changing positionX
   *
   * @params   direction {int} left or right
   * @params   distance {float} moving distance
   */
  public void moveX (int direction, float distance) {
    float currentPositionX = this.position[Constants.X];
    if (direction == Constants.LEFT) {
      this.position[Constants.X] = currentPositionX - distance;
    } else if (direction == Constants.RIGHT) {
      this.position[Constants.X] = currentPositionX + distance;
    }
  }
  
  
}

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

  public Controller (E model) {
    this.model = model;
  }

  abstract void update ();
}


//This class has the function of observing an event
//Notify all other class if the event happens 
abstract class Observer {
  Arraylist<Listener> list;
  public Observer () {
    list = new Arraylist<Listener> () ;
  }
  
  public void notifyAllListener ();
  public void addListener (Listener listener) {
    list.add(listener); 
  }
}

//This class will be the listener waiting for the notify from observer
interface Listener {
  public static final int REMOVE_FIRST_OBSTALCE = 1;
  public static final int NOT_REMOVE_FIRST_OBSTACLE = 2;
  public static final int RUNNER_COLLIDE_OBSTACLE = 3;
  public static final int RUNNER_NOT_COLLIDE_OBSTACLE = 4;

  public void listen (int data);
}
