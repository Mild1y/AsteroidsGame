class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 5;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[1] = -8;
    	yCorners[1] = -8;
    	xCorners[2] = 16;
    	yCorners[2] = 0;
    	xCorners[3] = -8;
    	yCorners[3] = 8;
    	xCorners[4] = -2;
    	yCorners[4] = 0;
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myColor = color(255);
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
}
