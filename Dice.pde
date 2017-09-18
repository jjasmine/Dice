void setup()
{
	size(200,200);
	noLoop();
}
void draw()
{
	background(0);
	Die b = new Die(20,150);
	b.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX;
	int myY;
	int droll;

	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		droll = (int)(Math.random() * 5 + 1);
	}
	
	void show()
	{
		rect(25,25,50,50,7);

		if(droll == 1)
		{
		fill(0);
		ellipse(50,50,7,7);
		}
		else if(droll == 2)
		{
		fill(0);
		ellipse(40,40,7,7);
		ellipse(60,60,7,7);
		}
		else if(droll == 3)
		{
		fill(0);
		ellipse(40,40,7,7);
		ellipse(60,60,7,7);
		ellipse(50,50,7,7);
		}
		else if(droll == 4)
		{
		fill(0);
		ellipse(40,40,7,7);
		ellipse(60,40,7,7);
		ellipse(40,60,7,7);
		ellipse(60,60,7,7);
		}
		else if(droll == 5)
		{
		fill(0);
		ellipse(40,40,7,7);
		ellipse(60,40,7,7);
		ellipse(40,60,7,7);
		ellipse(60,60,7,7);
		ellipse(50,50,7,7);
		}
		else if(droll == 6)
		{
		fill(0);
		ellipse(40,40,7,7);
		ellipse(60,40,7,7);
		ellipse(40,60,7,7);
		ellipse(60,60,7,7);
		ellipse(40,50,7,7);
		ellipse(60,50,7,7);
		}


	}
}
