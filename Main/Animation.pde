//It will work as frame-based animation
class Animation {
  ArrayList<PImage> images;
  int imageNumber;
  int count;

  public Animation (PImage... images) {
    loadImages (images);
  }

  public Animation () {
  }

  public void loadImages (PImage... images) {
    this.images = new ArrayList<PImage> ();
    for (PImage image : images) {
      this.images.add(image);
    }

    imageNumber = this.images.size ();
  }

  public PImage animate () {
    PImage image = images.get(count); 
    count = (count+1) % imageNumber;

    return image;
  }
}
