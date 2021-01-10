<<<<<<< HEAD
class Bullet extends Model {
  float x, y;

  float speed;
  float angle;

  float size;

  Bullet(float x, float y, float speed, float angle, float size) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.angle = angle;
    this.size = size;
  }
=======
class Bullet extends Model{
 float x , y;
 
 float speed;
 float angle;
 
 float size;
 float bulletHeight;
 float bulletWidth;
 Bullet(float x, float y, float speed, float angle, float size){
   this.x = x;
   this.y = y;
   this.speed = speed;
   this.angle = angle;
   this.size = size;
   bulletHeight = size;
   bulletWidth = size;
 }
 
 float getHeight(){
   return bulletHeight;
 }
 
  float getWidth(){
   return bulletWidth;
 }
>>>>>>> e52963d99bbf5107cdb5b584bf1ce0b3241ae8cd
}
