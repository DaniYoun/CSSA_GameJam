class Star extends Model {
  float[] position;

  public Star (float[] position) {
    super(position);
  }
  
}

class StarView extends View<Star> {

  public StarView (Star star) {
     super(star); 
  }
  
  public void draw () {
    
  }
}
