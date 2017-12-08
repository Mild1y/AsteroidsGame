Spaceship bob = new Spaceship();
ArrayList<Bullet> bill = new ArrayList<Bullet>();
ArrayList<Asteroid> astField = new ArrayList<Asteroid>();
Star[] nightSky = new Star[200];
public void setup() 
{
	size(500,500);
	background(0);
  	for (int i = 0; i < nightSky.length; i++)
  	{
  		nightSky[i] = new Star();
  	}
  	for (int a = 0; a < 15; a++)
  	{
  		astField.add(new Asteroid());
  		astField.get(a).setDirectionX(Math.random() * 5 - 2);
  		astField.get(a).setDirectionY(Math.random() * 5 - 2);
  		astField.get(a).setPointDirection((int)(Math.random() * 360));
  	}
}
public void draw() 
{
	background(0);
  	for (int i = 0; i < nightSky.length; i++)
  	{
  		nightSky[i].show();
  	}
  	for(int a = astField.size()-1; a >= 0; a--)
  	{
  		astField.get(a).show();
  		astField.get(a).move();
  		if(dist((float)bob.getX(),(float)bob.getY(),(float)astField.get(a).getX(),(float)astField.get(a).getY()) < 20)
  		{
  			astField.remove(a);
  		}
  	}
  	for (int b = bill.size()-1; b >= 0; b--)
  	{
  		bill.get(b).show();
  		bill.get(b).move();
  		for(int a = astField.size()-1; a >= 0; a--)
  		{
  			if(dist((float)bill.get(b).getX(),(float)bill.get(b).getY(),(float)astField.get(a).getX(),(float)astField.get(a).getY()) < 20)
  			{
  				astField.remove(a);
  			}
  		}
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
	if(key == 'r')
	{
		bill.add(new Bullet(bob));
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

