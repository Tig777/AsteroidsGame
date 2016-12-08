class Bullet extends Floater  
{   
  Bullet(SpaceShip bob)
   {

  myCenterX = bob.getX();
  myCenterY = bob.getY();
  myPointDirection = bob.getPointDirection();
  double dRadians =myPointDirection*(Math.PI/180); 
  myDirectionX = 15 * Math.cos(dRadians) + bob.getDirectionX();
  myDirectionY = 15 * Math.sin(dRadians) + bob.getDirectionY();
  
    }

public void show()
{
  noStroke();
  fill(200, 0, 0);
  ellipse((float)myCenterX,(float)myCenterY,(float)8,(float) 8);
}

public void move()
{
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;  
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