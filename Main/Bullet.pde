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
}
