Spaceship bob = new Spaceship();
Asteroid[] astField = new Asteroid[250];
Star[] nightSky = new Star[200];
public void setup() 
{
	size(500,500);
	background(0);
  	for (int i = 0; i < nightSky.length; i++)
  	{
  		nightSky[i] = new Star();
  	}
  	for (int a = 0; a < astField.length; a++)
  	{
  		astField[a] = new Asteroid();
  		astField[a].setDirectionX(Math.random() * 5 - 2);
  		astField[a].setDirectionY(Math.random() * 5 - 2);
  		astField[a].setPointDirection((int)(Math.random() * 360));
  	}
}
public void draw() 
{
	background(0);
  	for (int i = 0; i < nightSky.length; i++)
  	{
  		nightSky[i].show();
  	}
  	for (int a = 0; a < astField.length; a++)
  	{
  		astField[a].show();
  		astField[a].move();
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
		bob.accelerate(0.5);
	}
	if(key == 's')
	{
		bob.accelerate(-0.5);
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

