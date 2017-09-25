int sum;
void setup()
{
	size(600,600);
	noLoop();
}
void draw()
{

	background(255,68,2);
	for( int y = 25; y <= 500; y+=70 )
	{
		for( int x = 25; x <= 500; x+=70)
		{
			Die b = new Die(x,y);
			b.show();
			if(b.droll < 7)
			{
			sum = sum + b.droll;
			}
		}

	}
	text("You rolled" + sum,75,550);
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
		droll = (int)(Math.random() * 6 + 1);

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
		ellipse(myX+15,myY+15,7,7);
		ellipse(myX+25,myY+25,7,7);
		ellipse(myX+35,myY+35,7,7);
		}
		else if(droll == 4)
		{
		fill(0);
		ellipse(myX+15,myY+15,7,7);
		ellipse(myX+15,myY+30,7,7);
		ellipse(myX+35,myY+15,7,7);
		ellipse(myX+35,myY+30,7,7);
		}
		else if(droll == 5)
		{
		fill(0);
		ellipse(myX+15,myY+15,7,7);
		ellipse(myX+40,myY+15,7,7);
		ellipse(myX+27,myY+25,7,7);
		ellipse(myX+40,myY+40,7,7);
		ellipse(myX+15,myY+40,7,7);
		}
		else if(droll == 6)
		{
		fill(0);
		ellipse(myX+10,myY+10,7,7);
		ellipse(myX+10,myY+20,7,7);
		ellipse(myX+10,myY+30,7,7);
		ellipse(myX+30,myY+10,7,7);
		ellipse(myX+30,myY+20,7,7);
		ellipse(myX+30,myY+30,7,7);
		}


	}
}
