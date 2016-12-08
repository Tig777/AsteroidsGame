SpaceShip bob;
Stars [] star;
ArrayList <Asteroids> nick;
ArrayList <Bullet> hello;

public void setup() 
{
  size(600,600);
  bob = new SpaceShip();

  star = new Stars[50];

  nick = new ArrayList <Asteroids>();
  hello = new ArrayList <Bullet>();
  

  for (int i = 0; i < star.length; i++) 
  {
    star[i] = new Stars();
  }
  
  for (int j = 0; j < 20; j++)
  {
    nick.add(new Asteroids());

   }
  }







public void draw() 
{
 
  background(10, 16, 28);

  for (int i = 0; i < star.length; i++) //stars
  {
   star[i].show();
  }

  for (int j = 0; j < nick.size(); j++) //Asteroids
  {
     nick.get(j).show();
     nick.get(j).move();
     if(dist(bob.getX(),bob.getY(),nick.get(j).getX(),nick.get(j).getY())<30)
     {
      nick.remove(j);
     } 
  }
  for(int i = 0; i < hello.size(); i++)//Bullet
   {
      hello.get(i).show();
      hello.get(i).move(); 
     
   } 

   bob.show();
   bob.move();
  
for(int h=0;h<hello.size();h++){
    for(int k=0;k<nick.size();k++){
      if(dist(hello.get(h).getX(),hello.get(h).getY(),nick.get(k).getX(),nick.get(k).getY())<20)
      {
        nick.remove(k);
        hello.remove(h);
        break;
      }
    }
  }
  



}




class Stars    
  {     
    int myX, myY;
    Stars()
    {
      myY = (int)(Math.random()*600);
      myX = (int)(Math.random()*600);  
    }  
  void show()
  {
    noStroke();
    fill(int(random (253)),int(random(253)), int(random(253)));
    ellipse(myX,myY, 5,5);
  }
}
public void keyPressed() 
{
    
   if(key == 'h')
   {
    bob.hyperSpace();
    }
   if(key == 'w')
      bob.accelerate(5);
    if(key == 's')
      bob.accelerate(-5);
    if(key == 'a')
      bob.rotate(-10);
    if(key == 'd')
      bob.rotate(10);
    if(key == ' ')
      hello.add(new Bullet(bob));
}

class Asteroids extends Floater
{
  private int rotSpeed;
  private int rotation = (int)(Math.random()*5)-2;

  public Asteroids(){
    corners = 11;
    xCorners = new int [corners];
    yCorners = new int [corners]; 
    xCorners[0] = -15;
    yCorners[0] = 0;
    xCorners[1] = -20;
    yCorners[1] = 10;
    xCorners[2] = -10;
    yCorners[2] = 20;
    xCorners[3] = 5;
    yCorners[3] = 20;
    xCorners[4] = 15;
    yCorners[4] = 23;
    xCorners[5] = 25;
    yCorners[5] = 10;
    xCorners[6] = 20;
    yCorners[6] = -15;
    xCorners[7] = 10;
    yCorners[7] = -13;
    xCorners[8] = 5;
    yCorners[8] = -20;
    xCorners[9] = -10;
    yCorners[9] = -20;
    xCorners[10] = -20;
    yCorners[10] = -10;
    myColor = 125;
    myCenterX =  Math.random()*5-2; 
    myCenterY =  Math.random()*5-2; 
    myDirectionX = Math.random()*5-2;
    myDirectionY = Math.random()*5-2;
    myPointDirection =  0;
  }
    
    public void move()
  {      
    rotate(rotSpeed);
    rotate(rotation);
    super.move(); 
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

class SpaceShip extends Floater  // I has Answer!
{   
  SpaceShip(){
    corners = 9;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = 30;
    yCorners[0] = 0;
    xCorners[1] = 15;
    yCorners[1] = 10;
    xCorners[2] = 0;
    yCorners[2] = 10;
    xCorners[3] = -25;
    yCorners[3] = 20;
    xCorners[4] = -15;
    yCorners[4] = 10;
    xCorners[5] = -15;
    yCorners[5] = -10;
    xCorners[6] = -25;
    yCorners[6] = -20;
    xCorners[7] = 0;
    yCorners[7] = -10;
    xCorners[8] = 15;
    yCorners[8] = -10;
    myColor = 254;
    myCenterX = 300;
    myCenterY = 300;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0; 
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
   
   public void hyperSpace(){
      bob.setX((int)(Math.random()*600));
      bob.setY((int)(Math.random()*600));
      bob.setPointDirection((int)(Math.random()*600));
      bob.setDirectionX(0);
      bob.setDirectionY(0);
   }
}


abstract class Floater //Do NOT modify the Floater class! Make changes in the SpaceShip class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void rotate (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }   
} 




