class Star extends Model {
  float[] position;
  private float size = 30;
  private float starHeight , starWidth = size;
  
  public Star (float[] position) {
    super(position);
  }
  
  float getHeight(){
   return starHeight; 
  }
  
  float getWidth(){
   return starWidth; 
  }
  
  float getSize(){
   return size; 
  }
  
}
