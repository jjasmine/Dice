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
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		rect(25,25,50,50,7);
	}
}
