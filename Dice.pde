void setup()
{
	size(600,600);
	noLoop();
}
void draw()
{
	background(255,4,2);
	for( int y = 25; y <= 500; y+=70 )
	{
		for( int x = 25; x <= 500; x+=70)
		{
			Die b = new Die(x,y);
			b.show();
		}
	}
	
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
		fill(255);
		noStroke();                                                      
		rect(myX,myY,50,50,7);

		if(droll == 1)
		{
		fill(0);
		ellipse(myX + 25,myY + 25,7,7);
		}
		else if(droll == 2)
		{
		fill(0);
		ellipse(myX+15,myY+15,7,7);
		ellipse(myX+35,myY+35,7,7);
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
