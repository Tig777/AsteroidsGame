class Bullet extends Floater  
{   
  Bullet(SpaceShip bob)
   {

  myColor = 254;
  myCenterX = 300;
  myCenterY = 300;
  double dRadians =myPointDirection*(Math.PI/180); 
  myDirectionX = 5 * Math.cos(dRadians) + 300;
  myDirectionY = 5 * Math.sin(dRadians) + 300 ;
  myPointDirection =0;
  
    }
   public void setX(int x){myCenterX = x;}
   public int getX(){return (int)myCenterX;}   
   public void setY(int y){myCenterY = y;}   
   public int getY(){return (int)myCenterY;}   
   public void setDirectionX(double x){myDirectionX = x;}   
   public double getDirectionX(){return myDirectionX;}   
   public void setDirectionY(double y){myDirectionY = y;}   
   public double getDirectionY(){return myDirectionY;}   
   public void setPointDirection(int degrees){myPointDirection = degrees;}   
   public double getPointDirection(){return myPointDirection;} 

   
 }