Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
	size(500,500);
	background(0);
  	for (int i = 0; i < nightSky.length; i++)
  	{
  		nightSky[i] = new Star();
  	}
}
public void draw() 
{
	background(0);
  	for (int i = 0; i < nightSky.length; i++)
  	{
  		nightSky[i].show();
  	}
  	bob.move();
  	bob.show();
}
public void keyPressed()
{
	if(key == 'e')
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setX((int)(Math.random() * 500));
		bob.setY((int)(Math.random() * 500));
		bob.setPointDirection((int)(Math.random() * 360));
		background(0);
	}
	if(key == 'w')
	{
		bob.accelerate(1);
	}
	if(key == 's')
	{
		bob.accelerate(-1);
	}
	if(key == 'd')
	{
		bob.turn(10);
	}
	if(key == 'a')
	{
		bob.turn(-10);
	}
}
public void keyReleased()
{
	if(key == 'w')
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
	}
	if(key == 's')
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
	}
}

